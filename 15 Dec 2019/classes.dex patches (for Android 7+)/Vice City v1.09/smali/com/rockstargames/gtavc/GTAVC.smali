.class public Lcom/rockstargames/gtavc/GTAVC;
.super Lcom/wardrumstudios/utils/WarMedia;
.source "GTAVC.java"


# static fields
.field public static mySelf:Lcom/rockstargames/gtavc/GTAVC;


# instance fields
.field final UseADX:Z

.field UseExpansionPack:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/rockstargames/gtavc/GTAVC;->mySelf:Lcom/rockstargames/gtavc/GTAVC;

    .line 93
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "**** Loading SO\'s"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    :try_start_0
    const-string v0, "ImmEmulatorJ"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    const-string v0, "GTAVC"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 100
    :goto_0
    const-string v0, "CLEO"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 101
    return-void

    .line 97
    :catch_0
    move-exception v0

    goto :goto_0

    .line 96
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 20
    invoke-direct {p0}, Lcom/wardrumstudios/utils/WarMedia;-><init>()V

    .line 23
    iput-boolean v0, p0, Lcom/rockstargames/gtavc/GTAVC;->UseExpansionPack:Z

    .line 24
    iput-boolean v0, p0, Lcom/rockstargames/gtavc/GTAVC;->UseADX:Z

    return-void
.end method


# virtual methods
.method public ServiceAppCommand(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "args"    # Ljava/lang/String;

    .prologue
    .line 83
    const-string v0, "ADXEvent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lcom/rockstargames/gtavc/GTAVC;->mySelf:Lcom/rockstargames/gtavc/GTAVC;

    const-string v1, ""

    const-string v2, ""

    invoke-static {v0, p2, v1, v2}, Lcom/AdX/tag/AdXConnect;->getAdXConnectEventInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 29
    sput-object p0, Lcom/rockstargames/gtavc/GTAVC;->mySelf:Lcom/rockstargames/gtavc/GTAVC;

    .line 30
    const v5, 0x1e1bc

    iput v5, p0, Lcom/rockstargames/gtavc/GTAVC;->HELLO_ID:I

    .line 31
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/rockstargames/gtavc/GTAVC;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v5, p0, Lcom/rockstargames/gtavc/GTAVC;->appIntent:Landroid/content/Intent;

    .line 32
    const-string v5, "GTA3 Vice City"

    iput-object v5, p0, Lcom/rockstargames/gtavc/GTAVC;->appTickerText:Ljava/lang/CharSequence;

    .line 33
    const-string v5, "Vice City"

    iput-object v5, p0, Lcom/rockstargames/gtavc/GTAVC;->appContentTitle:Ljava/lang/CharSequence;

    .line 34
    const-string v5, "Running - Return to Game?"

    iput-object v5, p0, Lcom/rockstargames/gtavc/GTAVC;->appContentText:Ljava/lang/CharSequence;

    .line 35
    const-string v5, "com.rockstargames.gtavc.R"

    sput-object v5, Lcom/google/android/vending/expansion/downloader/Helpers;->resourceClassString:Ljava/lang/String;

    .line 37
    const v5, 0x7f020018

    iput v5, p0, Lcom/rockstargames/gtavc/GTAVC;->appStatusIcon:I

    .line 39
    const-string v5, "main.11.com.rockstargames.gtavc.obb"

    iput-object v5, p0, Lcom/rockstargames/gtavc/GTAVC;->expansionFileName:Ljava/lang/String;

    .line 41
    const/4 v1, 0x0

    .line 42
    .local v1, "isupdate":Z
    const/4 v2, 0x0

    .line 43
    .local v2, "loglevel":I
    sget-object v5, Lcom/rockstargames/gtavc/GTAVC;->mySelf:Lcom/rockstargames/gtavc/GTAVC;

    invoke-static {v5, v1, v10}, Lcom/AdX/tag/AdXConnect;->getAdXConnectInstance(Landroid/content/Context;ZI)Lcom/AdX/tag/AdXConnect;

    .line 46
    invoke-virtual {p0}, Lcom/rockstargames/gtavc/GTAVC;->GetGameBaseDirectory()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/rockstargames/gtavc/GTAVC;->baseDirectory:Ljava/lang/String;

    .line 48
    invoke-virtual {p0}, Lcom/rockstargames/gtavc/GTAVC;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 51
    .local v3, "res":Landroid/content/res/Resources;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/GTAVC/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/rockstargames/gtavc/GTAVC;->expansionFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, "testexpansionFileName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, "buildobb":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 55
    iput-boolean v10, p0, Lcom/rockstargames/gtavc/GTAVC;->UseExpansionPack:Z

    .line 56
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/GTAVC/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/rockstargames/gtavc/GTAVC;->expansionFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/rockstargames/gtavc/GTAVC;->expansionFileName:Ljava/lang/String;

    .line 59
    :cond_0
    const-string v5, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAkGNYE/MizDPktonusH3WUl935fErABUJ2LUuM/N/kdblucD48Wcu2GtCMG8ypyFFSTUsl1tlRr/DRZYNtJxQnMXOG1la2SKgagNF2wfbtO8NAWeg4JMjoxjBVhwNkVTx+RWOBYN+F9j/VpLyfpsvE28buR/oGq97fJJBakrwT/KdRZMBB3+qLQ1m+9Qgi92vFGuI4rvbmuCYRce7GXRmc7VdM/xX4JwHDieYwMRTS+XuWnvb0X0xVS+d/VuZ93PpwL4Zp1YysBXj0MGvsT+v8n581Cs2RMkw5ccUlkTLpzOnc/fPAkVuRVkBfgRw6BE2BlsGLCSpiVRj+GECd1USLQIDAQAB"

    sput-object v5, Lcom/wardrumstudios/utils/WarDownloaderService;->BASE64_PUBLIC_KEY:Ljava/lang/String;

    .line 60
    const/16 v5, 0x14

    new-array v5, v5, [B

    fill-array-data v5, :array_0

    sput-object v5, Lcom/wardrumstudios/utils/WarDownloaderService;->SALT:[B

    .line 61
    iget-boolean v5, p0, Lcom/rockstargames/gtavc/GTAVC;->UseExpansionPack:Z

    if-eqz v5, :cond_1

    .line 62
    new-array v5, v11, [Lcom/wardrumstudios/utils/WarMedia$XAPKFile;

    iput-object v5, p0, Lcom/rockstargames/gtavc/GTAVC;->xAPKS:[Lcom/wardrumstudios/utils/WarMedia$XAPKFile;

    .line 64
    iget-object v5, p0, Lcom/rockstargames/gtavc/GTAVC;->xAPKS:[Lcom/wardrumstudios/utils/WarMedia$XAPKFile;

    new-instance v6, Lcom/wardrumstudios/utils/WarMedia$XAPKFile;

    const/16 v7, 0xb

    const-wide/32 v8, 0x58751942

    invoke-direct {v6, v11, v7, v8, v9}, Lcom/wardrumstudios/utils/WarMedia$XAPKFile;-><init>(ZIJ)V

    aput-object v6, v5, v10

    .line 71
    :cond_1
    iput-boolean v10, p0, Lcom/rockstargames/gtavc/GTAVC;->AddMovieExtension:Z

    .line 73
    iput-boolean v11, p0, Lcom/rockstargames/gtavc/GTAVC;->wantsMultitouch:Z

    .line 74
    iput-boolean v11, p0, Lcom/rockstargames/gtavc/GTAVC;->wantsAccelerometer:Z

    .line 77
    invoke-super {p0, p1}, Lcom/wardrumstudios/utils/WarMedia;->onCreate(Landroid/os/Bundle;)V

    .line 78
    return-void

    .line 60
    :array_0
    .array-data 1
        0x1t
        0x2at
        -0xct
        -0x1t
        0x36t
        0x62t
        -0x64t
        -0xct
        0x2bt
        0x2t
        -0x8t
        -0x4t
        0x9t
        0x5t
        -0x6at
        -0x6bt
        -0x21t
        0x2dt
        -0x1t
        0x54t
    .end array-data
.end method
