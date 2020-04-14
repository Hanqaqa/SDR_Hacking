# SDR_Hacking
In this repository I will explain the various programs and scripts that I used to learn and do different cool things with my HackRF one. I also include programs that have already been made and/or compiled and provide my own compilation and settings for Windows 10.

So what is **SDR** or **Software-Defined Radio**, SDR is a radio communication system where components that have been traditionally implemented in hardware (e.g. mixers, filters, amplifiers, modulators/demodulators, etc.) are instead implemented by means of software on a personal computer.

There are quite a few affordable SDR to buy, the most famous ones include [RTL SDR](https://www.rtl-sdr.com/buy-rtl-sdr-dvb-t-dongles/), [HackRF One](https://greatscottgadgets.com/hackrf/) (This is an Open Source SDR and the one I bought from [Banggood](https://es.banggood.com/HackRF-One-1MHz-6GHz-Radio-Platform-Development-Board-Software-Defined-RTL-SDR-Demoboard-Kit-Dongle-Receiver-Ham-Radio-p-1552853.html?rmmds=search), a lot cheaper than the original one), [NooElec](https://www.nooelec.com/store/sdr/sdr-receivers/nesdr-smartee-xtr.html), etc.

## **SDR specifications**

Each SDR has different specifications, some of them are:

- **Bandwidth**: How much of the Electromagnetic spectrum you are able to receive, most of them go from 27Mhz all the way to 1.7Ghz. I bought the HackRF One for its huge bandwidth that ranges from 1MHz all the way to 6GHz. Remember to use an antenna tuned for the specific frequency you are working with, as an antenna tuned for 433MHz won't do a good job of listening to WiFi signals (2.4GHz).

- **Receiving and/or transmitting**: Most of the SDRs I listed don't have the capacity of outputting any signals. The HackRF One has that capability, its output power ranges from 1mW to 30mW depending on the frequency. So don't expect to output anything beyond a couple of meters.

## **SDR Software**

Once you have your SDR on your hands it's time to decide what to do with it. Do you just want to listen to FM radio with it? Do you want to listen to amateur ham radio? Do you want to see the electromagnetic spectrum produced by the different devices around your house? Do you want to receive live images from satellites? Track nearby aircraft? Do you want to hack every garage door? Do you want to spoof GPS signals? Do you want to see other people's screen by picking up their HDMI noise?

The possibilities are endless!, even though each application uses a different program, you will spend most of your time in only a couple of them. Let's go through some of my favourite programs and what each one of them does. Again I mostly use Windows 10, not very familiar with Linux, I will provide its Linux or macOS counterpart whenever I can.

- **[SDR#](https://airspy.com/download/)**: Free, but not Open Source, the most used SDR software in Windows, it is an easy and lightweight program that allows you to visualize the frequency spectrum and demodulate the signal you are looking at. Since it is so well known, lots and lots of [plugins](https://www.rtl-sdr.com/sdrsharp-plugins/) are available for it. You can demodulate PAL, NTSC, DSD, Tetra...

    ![SDR#](https://github.com/Hanqaqa/SDR_Hacking/blob/master/media/SDRSharp.PNG)


    Its Linux and macOS counterpart is called [GQRX](https://gqrx.dk/), it is Open Source and easy  to use, although it doesn't have as many plugins as SDR#.

- **[Universal Radio Hacker](https://github.com/jopohl/urh)**: An Open Source and easy to use signal analyzer. I learnt more using this program for a few hours than with several years of signal analysis in my university. With this program you can easily demodulate and see the info that is travelling through the air of whatever device you want to learn about, keyfobs, FM Radio Stations, weather stations... Although one thing is seeing the ones and zeroes travelling through the air and a very different thing is reverse engineering how that series of ones and zeroes was produced. Also available on Linux and macOS.

    ![URH](https://github.com/Hanqaqa/SDR_Hacking/blob/master/media/URH.PNG)

- **[GNU Radio](https://www.gnuradio.org/)**: The father of all the SDR applications. It is an Open Source development toolkit that provides signal processing blocks to implement software-defined radios and signal-processing systems. Requires a very good knowledge of all the modulation and demodulation techniques as well as general knowledge of flowgraph programming. There is a big number of premade modules. Available for all platforms.

    ![GNURADIO](https://github.com/Hanqaqa/SDR_Hacking/blob/master/media/GNURADIO.png)

## **SDR in the law**

Now comes the boring part. Although generally, you can't output any electromagnetic signal outside of a few selected areas, which are the [ISM bands](https://en.wikipedia.org/wiki/ISM_band). These are the only ones where you could output some signals without running into trouble with the law or requiring any special license (Ham radio operator), as long as you respect the power that you can output in each band.

What about listening? In most parts of the world it is illegal to listen to radio signals that aren't meant for the general public, like listening to police radio broadcasts. Even though, these signals are modulated with the TETRA protocol which is not encrypted and readily accessible, it is illegal to listen to them. 

En lo que se refiere a la ley española, [Ley 32/2003, de 3 de noviembre, General de Telecomunicaciones.](https://www.boe.es/buscar/act.php?id=BOE-A-2003-20253), en el Articulo 53 de Infracciones muy graves, epígrafe n), considera *la interceptación, sin autorización, de telecomunicaciones no destinadas al público en general como una infraccion muy grave*, con hasta 21 millones de € de multa, esto quiere decir, es decir no está permitido la escucha a las Fuerzas y Cuerpos de Seguridad Nacional, así como la ingeniería inversa de diversos aparatos electrónicos. 

En el mismo Artículo 53, su epigrafe e) establece: *La producción deliberada de interferencias definidas como perjudiciales* también se consdierará como una infracción muy grave, es decir, deberemos de ser muy cuidadosos a la hora de probar las distintas funciones de nuestro SDR, siempre emitiendo en las frecuencias de las bandas que tengamos permiso. Aunque por lo general la baja potencia de estos aparatos  menos de 25mW, dificilmente podrá provocar interferencia alguna con aparatos, a no ser que se disponga de amplificadores.

Now that we are on the same wave. Let's get to do some cool stuff with the HackRF One.

## Signal Modulation

In electronics and telecommunications, modulation is the process of varying one or more properties of a periodic waveform, called the carrier signal, with a modulating signal that typically contains information to be transmitted. Most radio systems in the 20th century used frequency modulation (FM) or amplitude modulation (AM) for radio broadcast.

The main modulation methods used today are:

### Analog Modulation

##### Amplitude Modulation

##### Frequency Modulation

### Digital Modulation

##### Amplitude Shift Keying

##### Frequency Shift Keying

### Spread Spectrum Modulation

##### Frequency Hopping Spread Spectrum

## SDR#

As we saw in the intro, we can easily demodulate any signal we lock onto.

![SDR#](https://github.com/Hanqaqa/SDR_Hacking/blob/master/media/SDRSharp.PNG)

Here we are on the FM radio spectrum which ranges from 87.5MHz to 108MHz, on our left we can choose how to demodulate the signal, in this case we will choose the WFM (Wide Frequency Modulation) in order to hear our everyday radio.

Another project would be finding where our garage door is transmitting. Most of the garage door openers transmit on the 433 or 868 MHz band, se we look for strong signals in those frequencies, while we press the remote's button. And in 868.34MHz we find our signal. We will use this frequency later in order to try to reverse engineer this remote's algorithm.

![SDR Remote](https://github.com/Hanqaqa/SDR_Hacking/blob/master/media/SDRREMOTE.PNG)

We could also take a look into a **Frequency Hopping Spread Spectrum** (FHSS) signal, for that we will use my drone's signal which according to its instructions it emits around 868MHz. We focus SDR# around that frequency and we can easily spot the small bursts of electromagnetic force around that frequency with a very large bandwidth, around 20 MHz.

![SDR FHSS](https://github.com/Hanqaqa/SDR_Hacking/blob/master/media/SDRFHSS.PNG)

### [PAL/SECAM TV Plugin](https://www.rtl-sdr.com/new-sdr-plugin-pal-secam-tv/) 
We can see any analog TV signals, although, in my country, Analog TV was switched off in 2010, so the closest we have to any PAL modulation transmitter is my FPV drone emitting at E5 channel, or 5885MHz, we can see how it easily demodulates the signal with the press of a button.

![SDRPAL](https://github.com/Hanqaqa/SDR_Hacking/blob/master/media/SDRPAL.PNG)


## Universal Radio Hacker





## [Tempest Attack](https://github.com/martinmarinov/TempestSDR)

The most impressive of all the things I have done with my SDR, seeing what a computer is outputting to the screen it is attached to without touching it.