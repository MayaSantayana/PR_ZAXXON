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
    public float spaceshipSpeed = 50f;

    //Score
    static float score;
    public int extraScore;
    public int multiplicator;

    //UI
    public Sprite[] healthbarArray;
    [SerializeField] Text scoreText;
    [SerializeField] Text levelText;
    public Image healthbar;
    public int spritesPos = 0;
    

    //GameOverHolds
    int restartTimer = 0;
    [SerializeField] int holdTime = 4;

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

        for (int i = 0; i < shipComps.Length; i++)
        {
            shipRend[i] = shipComps[i].GetComponent<MeshRenderer>();
            //print(i);
        }

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


    //Functions
    public void OnDeath()
    {
        ship.SetActive(false);
        StopCoroutine("SpeedIncrease");      
        


    }

    public void Hit()
    {
        if ((health >= 1) && (inv == false))
        {
            health -= 1;
            spritesPos++;
            healthbar.sprite = healthbarArray[spritesPos];
            multiplicator = 1;
            inv = true;
            //shipColl.isTrigger = true;
            EnableRenderer(shipRend, false);
            //StartCoroutine("Blinking");
            Invoke("InvRevoke", 2f);
        }
        else
        {
            alive = false;
        }
    }

    void InvRevoke()
    {
        inv = false;
        //shipColl.isTrigger = false;

        EnableRenderer(shipRend, true);
        //StopCoroutine("Blinking");
    }

    public void PowerUp()
    {
        health += 1;
        spritesPos--;
        healthbar.sprite = healthbarArray[spritesPos];    
    }

    void UpdateUI()
    {

        float tiempo = Time.timeSinceLevelLoad;
        //float tiempo = Time.time;
        score = (Mathf.Round(tiempo) * spaceshipSpeed + extraScore) * multiplicator;

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

    IEnumerator Blinking()
    {
        for( ; ; )
        {
            int x = 1;
            if (x%2 == 1)
            {
                EnableRenderer(shipRend, false);
            }
            else
            {
                EnableRenderer(shipRend, true);
            }
            x++;

            yield return new WaitForSeconds(0.5f);
        }
    }
}
