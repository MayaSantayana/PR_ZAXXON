using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.EventSystems;

public class UIScript : MonoBehaviour
{
    //Menu sections
    [SerializeField] GameObject mainMenu;
    [SerializeField] GameObject optionsMenu;
    [SerializeField] GameObject highscoresMenu;

    //Buttons
    public GameObject mainFirstButton;
    public GameObject optionsFirstButton;
    public GameObject optionsClosedButton;
    public GameObject highscoresClosedButton;

    

    void Start()
    {
        Scene scene = SceneManager.GetActiveScene();
        int sceneNum = scene.buildIndex;

        if (sceneNum == 0)
        {
            ChangeMenuMain();
            MainMenuSelection();
        }

        print(sceneNum);

    }

    void Update()
    {
        Scene scene = SceneManager.GetActiveScene();
        int sceneNum = scene.buildIndex;
        if (sceneNum == 1 && Input.GetButtonDown("Pause"))
        {
            PauseUnpause();
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
            EventSystem.current.SetSelectedGameObject(optionsClosedButton);
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
        if ((optionsMenu.activeInHierarchy || highscoresMenu.activeInHierarchy) && Input.GetButtonDown("Cancel"))
        {
            ChangeMenuMain();
        }
    }


    //Pause Menu
    public void PauseUnpause()
    {
        if (!mainMenu.activeInHierarchy)
        {
            mainMenu.SetActive(true);
            MainMenuSelection();
            Time.timeScale = 0f;
        }

        else if (mainMenu.activeInHierarchy || optionsMenu.activeInHierarchy)
        {
            mainMenu.SetActive(false);
            optionsMenu.SetActive(false);
            Time.timeScale = 1f;
        }
    }
}
