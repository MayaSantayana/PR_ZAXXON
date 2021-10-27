using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class InitGameScript : MonoBehaviour
{
    //-----------GLOBAL VARIABLES-------------

    //Alive
    public bool alive = true;
    public int maxHealth = 3;
    [SerializeField] GameObject ship;

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
    [SerializeField] Text scoreText;

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

        float tiempo = Time.time;
        print(Mathf.Round(tiempo));
        //score = Mathf.Round(tiempo)
    }

    void Update()
    {
        if (alive == false)
            OnDeath();
        if (Input.GetKeyDown(KeyCode.K))
            alive = false;

    }

    public void OnDeath()
    {
        print("Game Over");
        ship.SetActive(false);
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
                //SceneManager.LoadScene("Juego");
                print("restart");
            }
        }

    }
}
