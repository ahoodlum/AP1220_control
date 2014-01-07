#include "DDStructs.h"

void LatticeDDInit(void)
{

    /* initialize LED instance of gpio */
    MicoGPIOInit(&gpio_LED);
    
    /* initialize uart instance of uart_core */
    MicoUartInit(&uart_core_uart);
    
    /* initialize SPI_controller instance of slave_passthru */
    MicoPassthruInit(&slave_passthru_SPI_controller);
    
    /* invoke application's main routine*/
    main();
}

