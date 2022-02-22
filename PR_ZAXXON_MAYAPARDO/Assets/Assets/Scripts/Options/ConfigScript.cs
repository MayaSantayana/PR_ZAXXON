using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ConfigScript : MonoBehaviour
{
    private Slider volumeSlider;
    // Start is called before the first frame update
    void Start()
    {
        volumeSlider.value = GameManager.volumeMusic;
    }

    // Update is called once per frame
    void Update()
    {
        
    }
    public void CambiarVolumenMusica()
    {
        GameManager.volumeMusic = volumeSlider.value;
    }

}
