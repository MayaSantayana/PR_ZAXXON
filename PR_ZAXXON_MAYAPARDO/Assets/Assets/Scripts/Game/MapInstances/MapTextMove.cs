using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MapTextMove : MonoBehaviour
{
    [SerializeField] GameObject initObject;
    InitGameScript initGameScript;
    float scrollY;

    // Start is called before the first frame update
    void Start()
    {
        initGameScript = initObject.GetComponent<InitGameScript>();
    }

    // Update is called once per frame
    void Update()
    {
        scrollY = initGameScript.spaceshipSpeed;
        float OffsetY = scrollY * Time.time;
        GetComponent<Renderer>().material.mainTextureOffset = new Vector2(0f, OffsetY);
    }
}
