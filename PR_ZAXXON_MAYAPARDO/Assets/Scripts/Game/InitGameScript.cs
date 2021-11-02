using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class InitGameScript : MonoBehaviour
{
    //-----------GLOBAL VARIABLES-------------

    //ShipGameObject
    public Renderer rend;
    [SerializeField] GameObject ship;

    //ShipHealth
    public bool alive = true;
    public int maxHealth = 3;
    public int health;
    [SerializeField] bool inv = false;

    //Level
    int level = 1;
    public int maxLevel = 10;
    public float levelTime = 360f;

    //Speed
    public float speedIncrease = 10f;
    public float spaceshipSpeed = 50f;

    //Score
    static int score;

    //UI
    public Sprite[] healthbarArray;
    [SerializeField] Text scoreText;
    public Image healthbar;
    public int spritesPos = 0;

    //GameOverHolds
    float startTimeH = 0f;
    float startTimeR = 0f;
    float holdTime = 5.0f;

    IEnumerator SpeedIncrease()
    {

        for (level = 1; level <= maxLevel; level++)
        {
            spaceshipSpeed = spaceshipSpeed + speedIncrease;

            if (level == maxLevel)
            {
                Debug.Log("Level " + level + ". Max speed.");
            }
            else
            {
                Debug.Log("Level " + level + ". Speed: " + spaceshipSpeed);
            }
            yield return new WaitForSeconds(levelTime);

        }

    }

    void Start()
    {
        StartCoroutine("SpeedIncrease");
        spaceshipSpeed = 50f;
        health = maxHealth;
        Debug.Log("Your health is " + health);
        float tiempo = Time.time;
        print(Mathf.Round(tiempo));
        score = ("Score: " + Mathf.Round(tiempo))
    }

    void Update()
    {
        if (alive == false)
            OnDeath();

    }

    public void OnDeath()
    {
        print("Game Over");
        ship.SetActive(false);
        StopCoroutine("SpeedIncrease");
        if (Input.GetKeyDown(KeyCode.Space))
        {
            startTimeH += 1;
            if (startTimeH >= holdTime)
            {
                //SceneManager.LoadScene("HighScores"); 
                print("highscores");
            }
        }        
        
        if (Input.GetKeyDown(KeyCode.R))
        {
            startTimeR = Time.time;
            if (startTimeR >= holdTime)
            {
                SceneManager.LoadScene("Juego");
                print("restart");
            }
        }

    }

    public void Hit()
    {
        if ((health > 0) && (inv == false))
        {
            health -= 1;
            spritesPos++;
            healthbar.sprite = healthbarArray[spritesPos];
            print("Your health is " + health);
            inv = true;
            rend.enabled = false;
            Invoke("InvRevoke", 2f);
        }
        else if (health <= 0)
        {
            alive = false;
        }
    }

    void InvRevoke()
    {
        rend.enabled = true;
        inv = false;
    }

    public void PowerUp()
    {
        health += 1;
        spritesPos--;
        healthbar.sprite = healthbarArray[spritesPos];    
    }

    /*void OnTriggerEnter(Collider other)
    {
        print("He chocao con " + other.gameObject.name);
        if (other.gameObject.layer == 6)
        {
            if ((health > 0) && (inv == false))
            {
                health -= 1;
                spritesPos++;
                healthbar.sprite = healthbarArray[spritesPos];
                print("Your health is " + health);
                inv = true;
                rend.enabled = false;
                Invoke("InvRevoke", 2f);
            }

            else if (health <= 0)
            {
                alive = false;
            }
        }

        if (other.gameObject.layer == 7)
        {
            if (health < maxHealth)
            {
                health += 1;
                spritesPos--;
                healthbar.sprite = healthbarArray[spritesPos];
                Object.Destroy(other);
            }
            else
            {
                Debug.Log("Full health");
            }
        }
    }
    void InvRevoke()
    {
        rend.enabled = true;
        inv = false;
    }*/
}
