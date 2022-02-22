using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class UIScript : MonoBehaviour
{
    //InitGameScript
    [SerializeField] GameObject initObject;
    InitGameScript initGameScript;

    //Menu sections
    [SerializeField] GameObject mainMenu;
    [SerializeField] GameObject optionsMenu;
    [SerializeField] GameObject highscoresMenu;
    [SerializeField] GameObject deathScreenMenu;
    [SerializeField] GameObject hudMenu;

    //Buttons
    public GameObject mainFirstButton;
    public GameObject optionsFirstButton;
    public Button optionsClosedButton;
    public GameObject highscoresClosedButton;
    public Button restartBTN;

    //Scenes
    int sceneNum;

    
    //START
    void Start()
    {
        Scene scene = SceneManager.GetActiveScene();
        int sceneNum = scene.buildIndex;

        if (sceneNum == 0)
        {
            ChangeMenuMain();
            MainMenuSelection();
        }

        //print(sceneNum);

        if (sceneNum == 1)
        {
            initObject = GameObject.Find("GlobalVar");
        }
    }

    //UPDATE
    void Update()
    {
        Scene scene = SceneManager.GetActiveScene();
        sceneNum = scene.buildIndex;
        initGameScript = initObject.GetComponent<InitGameScript>();

        if (sceneNum == 1)
        {
            GameScreens();
        }

        BackButton();
    }




    //----MAIN MENU INTERACTIVITY----


    //Default select
    public void MainMenuSelection()
    {
        //Clear selected objects
        EventSystem.current.SetSelectedGameObject(null);

        //Set new selected object
        EventSystem.current.SetSelectedGameObject(mainFirstButton);
    }

    //Game screens
    void GameScreens()
    {
        if (initGameScript.alive == true && Input.GetButtonDown("Pause"))
        {
            PauseUnpause();
        }

        if (initGameScript.alive == false && !deathScreenMenu.activeInHierarchy)
        {
            DeathScreen();
            
        }
    }

    //Pause Menu
    public void PauseUnpause()
    {
        if (!mainMenu.activeInHierarchy && !optionsMenu.activeInHierarchy)
        {
            mainMenu.SetActive(true);
            MainMenuSelection();
            Time.timeScale = 0f;
        }

        else /*if (mainMenu.activeInHierarchy || optionsMenu.activeInHierarchy)*/
        {
            mainMenu.SetActive(false);
            optionsMenu.SetActive(false);
            Time.timeScale = 1f;
        }
    }


    //Death Screen

    public void DeathScreen()
    {
        deathScreenMenu.SetActive(true);
        hudMenu.SetActive(false);
        restartBTN.Select();
    }


    //Buttons
    public void CargarEscena(int escena)
    {
        SceneManager.LoadScene(escena);
    }

    public void ChangeMenuMain()
    {
        if (optionsMenu.activeInHierarchy)
        {
            mainMenu.SetActive(true);
            optionsMenu.SetActive(false);

            EventSystem.current.SetSelectedGameObject(null);
            //EventSystem.current.SetSelectedGameObject(optionsClosedButton);
            optionsClosedButton.Select();
        }

        if (highscoresMenu.activeInHierarchy)
        {
            mainMenu.SetActive(true);
            highscoresMenu.SetActive(false);

            EventSystem.current.SetSelectedGameObject(null);
            EventSystem.current.SetSelectedGameObject(highscoresClosedButton);
        }
    
    }

    public void ChangeMenuOptions()
    { 
        mainMenu.SetActive(false);
        optionsMenu.SetActive(true);

        //Selection
        EventSystem.current.SetSelectedGameObject(null);
        EventSystem.current.SetSelectedGameObject(optionsFirstButton);
    }      
    public void ChangeMenuHS()
    { 
        mainMenu.SetActive(false);
        highscoresMenu.SetActive(true);

    }    

    public void QuitGame()
    {
        Debug.Log("Quit!");
        Application.Quit();
    }


    //Back input
    void BackButton()
    {
        if (mainMenu.activeInHierarchy && sceneNum==1 && Input.GetButtonDown("Cancel"))
        {
            PauseUnpause();
        }

        if ((optionsMenu.activeInHierarchy || highscoresMenu.activeInHierarchy) && Input.GetButtonDown("Cancel"))
        {
            ChangeMenuMain();
            optionsClosedButton.Select();
        }        
        

    }





}
