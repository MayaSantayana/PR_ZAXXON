using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class InitGameScript : MonoBehaviour
{
    //-----------GLOBAL VARIABLES-------------

    //ShipGameObject
    [SerializeField] GameObject ship;
    public GameObject[] shipComps;
    Collider shipColl;
    public MeshRenderer[] shipRend;

    //ShipHealth
    public bool alive = true;
    public int maxHealth = 3;
    public int health;
    public bool inv = false;

    //Level
    int level = 1;
    public int maxLevel = 10;
    public float levelTime = 360f;

    //Speed
    public float speedIncrease = 10f;
    public float spaceshipSpeed = 30f;

    //Score
    static float score;
    int nForMult = 0;
    public int multiplicator;

    //UI
    public Sprite[] healthbarArray;
    [SerializeField] Text scoreText;
    [SerializeField] Text levelText;
    public Image healthbar;
    public int spritesPos = 0;

    //Audio
    [Range(0f, 1f)]
    static public float volume;

    [SerializeField] GameObject audioObj;
    AudioManager audioManager;

    //GameOverHolds
    int restartTimer = 0;
    [SerializeField] int holdTime = 4;

    //Particles
    public ParticleSystem explosion;
    public ParticleSystem explosion2;

    IEnumerator SpeedIncrease()
    {

        for (level = 1; level <= maxLevel; level++)
        {
            spaceshipSpeed = spaceshipSpeed + speedIncrease;
            yield return new WaitForSeconds(levelTime);

        }

    }

    void Start()
    {
        shipColl = ship.GetComponent<Collider>();
        shipComps = GameObject.FindGameObjectsWithTag("ShipComps");

        /*for (int i = 0; i < shipComps.Length; i++)
        {
            shipRend[i] = shipComps[i].GetComponent<MeshRenderer>();
            //print(i);
        }*/

        score = 0;
        restartTimer = 0;
        
        StartCoroutine("SpeedIncrease");
        spaceshipSpeed = 50f;
        health = maxHealth;
        multiplicator = 1;
    }

    void Update()
    {
        if (alive == false)
        {
            OnDeath();
        }

        UpdateUI();

        if (Input.GetKeyDown(KeyCode.R))
        {
            StartCoroutine("Restart");
        }        
        
        if (Input.GetKeyUp(KeyCode.R))
        {
            StopCoroutine("Restart");
            restartTimer = 0;
        }
    }


    //METHODS

    public void OnDeath()
    {
        ship.SetActive(false);
        StopCoroutine("SpeedIncrease");
        StartCoroutine("Slowdown");
    }


    //Collisions
    public void Hit()
    {
        if ((health >= 1) && (inv == false))
        {
            FindObjectOfType<AudioManager>().Play("Hit");
            health -= 1;
            spritesPos++;
            healthbar.sprite = healthbarArray[spritesPos];
            multiplicator = 1;
            inv = true;
            EnableRenderer(shipRend, false);
            Invoke("InvRevoke", 2f);
        }
        else
        {
            explosion.Play();
            explosion2.Play();
            FindObjectOfType<AudioManager>().Play("Death");
            alive = false;
        }
    }
    public void PowerUp()
    {
        health += 1;
        spritesPos--;
        healthbar.sprite = healthbarArray[spritesPos];    
    }

    public void PickUp()
    {
        FindObjectOfType<AudioManager>().Play("PickUp");
        score += 10f * multiplicator;
        nForMult++;
        if(nForMult >= 5)
        {
            nForMult = 0;
            multiplicator++;
        }
    }

    void InvRevoke()
    {
        inv = false;
    }


    void UpdateUI()
    {

        float tiempo = Time.timeSinceLevelLoad;
        //float tiempo = Time.time;
        score = (Mathf.Round(tiempo) * spaceshipSpeed);

        scoreText.text = "Score: " + Mathf.Round(score) + "x" + multiplicator;
        levelText.text = "Level: " + level.ToString();
    }

    IEnumerator Restart()
    {
        for( ; ; )
        {
            restartTimer++;
            if (restartTimer >= holdTime)
            {
                SceneManager.LoadScene(1);
                print("restart");
            }
            print(restartTimer);
            yield return new WaitForSeconds(1f);
        }
    }

    void EnableRenderer(Renderer[] rd, bool enable)
    {
        for (int i = 0; i < rd.Length; i++)
        {
            rd[i].enabled = enable;
        }
    }

    IEnumerator Slowdown()
    {
        float elapsed = 0.0f;
        while(elapsed < 1f)
        {
            spaceshipSpeed = Mathf.Lerp(spaceshipSpeed, 0f, elapsed);
            elapsed += Time.deltaTime;
            yield return null;
        }
        spaceshipSpeed = 0f;
    }

    
}
