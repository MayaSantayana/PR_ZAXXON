using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DayNightCycle : MonoBehaviour
{
    [SerializeField] GameObject initObject;
    InitGameScript initGameScript;
    [Range(0.0f, 1.0f)]
    public float time;
    public float dayLenght;
    public float startTime = 0.4f;
    private float timeRate;
    public Vector3 noon;

    [Header("Sun")]
    public Light sun;
    public Gradient sunColor;
    public AnimationCurve sunIntensity;

    [Header("Moon")]
    public Light moon;
    public Gradient moonColor;
    public AnimationCurve moonIntensity;

    [Header("OtherLighting")]
    public AnimationCurve lightingIntensityMult;
    public AnimationCurve lightingReflectionsMult;
    public Gradient fogColor;

    void Start()
    {
        initObject = GameObject.Find("GlobalVar");
        initGameScript = initObject.GetComponent<InitGameScript>();
        dayLenght = initGameScript.levelTime;

        timeRate = 1.0f / dayLenght;
        time = startTime;
    }
    void Update()
    {
        //increment time
        time += timeRate * Time.deltaTime;
        if (time >= 1.0f)
        {
            time = 0.0f;
        }

        //light rotation
        sun.transform.eulerAngles = (time - 0.25f) * noon * 4.0f;
        moon.transform.eulerAngles = (time - 0.75f) * noon * 4.0f;

        //light intensity
        sun.intensity = sunIntensity.Evaluate(time);
        moon.intensity = moonIntensity.Evaluate(time);

        //light color
        sun.color = sunColor.Evaluate(time);
        moon.color = moonColor.Evaluate(time);
        moon.color = moonColor.Evaluate(time);

        //enable / disable sun
        if (sun.intensity == 0 && sun.gameObject.activeInHierarchy)
            sun.gameObject.SetActive(false);

        else if (sun.intensity > 0 && sun.gameObject.activeInHierarchy)
            sun.gameObject.SetActive(true);

        //enable / disable moon
        if (moon.intensity == 0 && sun.gameObject.activeInHierarchy)
            moon.gameObject.SetActive(false);

        else if (sun.intensity > 0 && sun.gameObject.activeInHierarchy)
            moon.gameObject.SetActive(true);

        //ligthing and reflection intensity
        RenderSettings.ambientIntensity = lightingIntensityMult.Evaluate(time);
        RenderSettings.reflectionIntensity = lightingReflectionsMult.Evaluate(time);
        RenderSettings.fogColor = fogColor.Evaluate(time);
    }
}
