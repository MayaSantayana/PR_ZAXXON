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
        multiplicator = 1;

    }

    void Update()
    {
        if (alive == false)
            OnDeath();
        UpdateUI();

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
            multiplicator = 1;
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

    void UpdateUI()
    {

        //float tiempo = Time.timeSinceLevelLoad;
        float tiempo = Time.time;
        score = /*Mathf.Round(tiempo) * spaceshipSpeed +*/ extraScore * multiplicator;

        scoreText.text = "Score: " + Mathf.Round(score) + "x" + multiplicator;
        levelText.text = "Level: " + level.ToString();
    }
}
