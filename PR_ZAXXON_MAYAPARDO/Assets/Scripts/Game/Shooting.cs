using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Shooting : MonoBehaviour
{
    [SerializeField] GameObject bullet;
    [SerializeField] GameObject chargedBullet;
    [SerializeField] GameObject cannon;
    [SerializeField] bool loaded;
    [SerializeField] Slider chargeMeter;
    [SerializeField] float chargeSpeed;
    // Start is called before the first frame update
    void Start()
    {
        chargeMeter.value = 0;
        loaded = false;
        chargeSpeed = 50f;
    }

    // Update is called once per frame
    void Update()
    {
        Charge();
    }

    void Charge()
    {
        if (loaded == false)
        {
            chargeMeter.value += chargeSpeed * Time.deltaTime;
            if (chargeMeter.value >= 100f)
            {
                loaded = true;
            }
        }
        if (Input.GetButtonDown("Fire1") && loaded == true)
        {
            DisparoCargado();
            chargeMeter.value = 0;
            loaded = false;
        }
        if (Input.GetButtonDown("Fire1") && loaded == false)
        {
            DisparoDebil();
            chargeMeter.value = 0;
        }

    }
    public void DisparoCargado()
    {
        Instantiate(chargedBullet, cannon.transform.position, Quaternion.identity);
    }    
    
    public void DisparoDebil()
    {
        Instantiate(bullet, cannon.transform.position, Quaternion.identity);
    }
}
