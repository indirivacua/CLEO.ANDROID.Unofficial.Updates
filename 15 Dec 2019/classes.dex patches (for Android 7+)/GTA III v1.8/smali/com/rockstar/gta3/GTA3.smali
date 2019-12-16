.class public Lcom/rockstar/gta3/GTA3;
.super Lcom/wardrumstudios/utils/WarMedia;
.source "GTA3.java"


# static fields
.field static UseArmDRM:Z

.field public static mySelf:Lcom/rockstar/gta3/GTA3;


# instance fields
.field protected ACCEPT_EULA_BUTTON:Ljava/lang/String;

.field protected DECLARE_EULA_BUTTON:Ljava/lang/String;

.field protected EULA1:Ljava/lang/String;

.field protected EULA2:Ljava/lang/String;

.field protected EULA3:Ljava/lang/String;

.field protected EULA4:Ljava/lang/String;

.field final UseADX:Z

.field UseExpansionPack:Z

.field pDlg:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    sput-boolean v0, Lcom/rockstar/gta3/GTA3;->UseArmDRM:Z

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/rockstar/gta3/GTA3;->mySelf:Lcom/rockstar/gta3/GTA3;

    .line 244
    :try_start_0
    const-string v0, "ImmEmulatorJ"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    const-string v0, "R1"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 248
    :goto_0
    const-string v0, "CLEO"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 249
    return-void

    .line 246
    :catch_0
    move-exception v0

    goto :goto_0

    .line 245
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 31
    invoke-direct {p0}, Lcom/wardrumstudios/utils/WarMedia;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockstar/gta3/GTA3;->pDlg:Landroid/app/ProgressDialog;

    .line 38
    iput-boolean v1, p0, Lcom/rockstar/gta3/GTA3;->UseExpansionPack:Z

    .line 39
    iput-boolean v1, p0, Lcom/rockstar/gta3/GTA3;->UseADX:Z

    return-void
.end method

.method static synthetic access$000(Lcom/rockstar/gta3/GTA3;)Z
    .locals 1
    .param p0, "x0"    # Lcom/rockstar/gta3/GTA3;

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/rockstar/gta3/GTA3;->localHasGameData()Z

    move-result v0

    return v0
.end method


# virtual methods
.method CleanupOldGTA3()V
    .locals 10

    .prologue
    const/16 v9, 0x9

    .line 141
    :try_start_0
    const-string v6, "GTA3Cleaned"

    invoke-virtual {p0, v6}, Lcom/rockstar/gta3/GTA3;->GetConfigSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 142
    .local v5, "isCleaned":Ljava/lang/String;
    const-string v6, "yes"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 143
    const/16 v6, 0x9

    new-array v3, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "anim"

    aput-object v7, v3, v6

    const/4 v6, 0x1

    const-string v7, "audio"

    aput-object v7, v3, v6

    const/4 v6, 0x2

    const-string v7, "data"

    aput-object v7, v3, v6

    const/4 v6, 0x3

    const-string v7, "data_etc"

    aput-object v7, v3, v6

    const/4 v6, 0x4

    const-string v7, "models"

    aput-object v7, v3, v6

    const/4 v6, 0x5

    const-string v7, "movies"

    aput-object v7, v3, v6

    const/4 v6, 0x6

    const-string v7, "TEXT"

    aput-object v7, v3, v6

    const/4 v6, 0x7

    const-string v7, "Textures"

    aput-object v7, v3, v6

    const/16 v6, 0x8

    const-string v7, "txd"

    aput-object v7, v3, v6

    .line 154
    .local v3, "gta3Dirs":[Ljava/lang/String;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "baseDirectory "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/rockstar/gta3/GTA3;->baseDirectory:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 155
    const/4 v2, 0x0

    .local v2, "gdir":I
    :goto_0
    if-ge v2, v9, :cond_1

    .line 156
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/rockstar/gta3/GTA3;->baseDirectory:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Lcom/rockstar/gta3/GTA3;->DeleteDirectory(Ljava/lang/String;Z)V

    .line 158
    new-instance v0, Ljava/io/File;

    iget-object v6, p0, Lcom/rockstar/gta3/GTA3;->baseDirectory:Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 160
    new-instance v6, Lcom/rockstar/gta3/GTA3$1;

    invoke-direct {v6, p0}, Lcom/rockstar/gta3/GTA3$1;-><init>(Lcom/rockstar/gta3/GTA3;)V

    invoke-virtual {v0, v6}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 165
    .local v1, "files":[Ljava/io/File;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v6, v1

    if-le v4, v6, :cond_0

    .line 166
    aget-object v6, v1, v4

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 165
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 155
    .end local v1    # "files":[Ljava/io/File;
    .end local v4    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    .end local v0    # "dir":Ljava/io/File;
    :cond_1
    const-string v6, "GTA3Cleaned"

    const-string v7, "yes"

    invoke-virtual {p0, v6, v7}, Lcom/rockstar/gta3/GTA3;->SetConfigSetting(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v2    # "gdir":I
    .end local v3    # "gta3Dirs":[Ljava/lang/String;
    .end local v5    # "isCleaned":Ljava/lang/String;
    :cond_2
    :goto_2
    return-void

    .line 173
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method public CustomLoadFunction()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 187
    const-string v6, "DownloadCheckVersion"

    invoke-virtual {p0, v6}, Lcom/rockstar/gta3/GTA3;->GetConfigSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 188
    .local v4, "version":Ljava/lang/String;
    const-string v6, "Downloadv9"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 189
    const-string v6, "EULAShown"

    const-string v7, "yes"

    invoke-virtual {p0, v6, v7}, Lcom/rockstar/gta3/GTA3;->SetConfigSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_0
    const-string v6, "EULAShown"

    invoke-virtual {p0, v6}, Lcom/rockstar/gta3/GTA3;->GetConfigSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, "isEula":Ljava/lang/String;
    const-string v6, "yes"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 224
    :goto_0
    return v5

    .line 198
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/rockstar/gta3/GTA3;->EULA2:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/rockstar/gta3/GTA3;->EULA4:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "Eula":Ljava/lang/String;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 201
    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/rockstar/gta3/GTA3;->ACCEPT_EULA_BUTTON:Ljava/lang/String;

    new-instance v8, Lcom/rockstar/gta3/GTA3$3;

    invoke-direct {v8, p0}, Lcom/rockstar/gta3/GTA3$3;-><init>(Lcom/rockstar/gta3/GTA3;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/rockstar/gta3/GTA3;->DECLARE_EULA_BUTTON:Ljava/lang/String;

    new-instance v8, Lcom/rockstar/gta3/GTA3$2;

    invoke-direct {v8, p0}, Lcom/rockstar/gta3/GTA3$2;-><init>(Lcom/rockstar/gta3/GTA3;)V

    .line 213
    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 219
    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 220
    .local v2, "alert":Landroid/app/AlertDialog$Builder;
    const-string v5, "EULA"

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 221
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 222
    .local v1, "al":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 224
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public ServiceAppCommand(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "args"    # Ljava/lang/String;

    .prologue
    .line 230
    const-string v0, "ADXEvent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    sget-object v0, Lcom/rockstar/gta3/GTA3;->mySelf:Lcom/rockstar/gta3/GTA3;

    const-string v1, ""

    const-string v2, ""

    invoke-static {v0, p2, v1, v2}, Lcom/AdX/tag/AdXConnect;->getAdXConnectEventInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 53
    sput-object p0, Lcom/rockstar/gta3/GTA3;->mySelf:Lcom/rockstar/gta3/GTA3;

    .line 54
    const v3, 0x1e1bc

    iput v3, p0, Lcom/rockstar/gta3/GTA3;->HELLO_ID:I

    .line 55
    const v3, 0x7f02001d

    iput v3, p0, Lcom/rockstar/gta3/GTA3;->appStatusIcon:I

    .line 56
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/rockstar/gta3/GTA3;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v3, p0, Lcom/rockstar/gta3/GTA3;->appIntent:Landroid/content/Intent;

    .line 57
    const-string v3, "Grand Theft Auto 3"

    iput-object v3, p0, Lcom/rockstar/gta3/GTA3;->appTickerText:Ljava/lang/CharSequence;

    .line 58
    const-string v3, "Grand Theft Auto 3"

    iput-object v3, p0, Lcom/rockstar/gta3/GTA3;->appContentTitle:Ljava/lang/CharSequence;

    .line 59
    const-string v3, "Running - Return to Game?"

    iput-object v3, p0, Lcom/rockstar/gta3/GTA3;->appContentText:Ljava/lang/CharSequence;

    .line 61
    const-string v3, "com.rockstar.gta3.R"

    sput-object v3, Lcom/google/android/vending/expansion/downloader/Helpers;->resourceClassString:Ljava/lang/String;

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/rockstar/gta3/GTA3;->GetGameBaseDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "GTA3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/rockstar/gta3/GTA3;->baseDirectory:Ljava/lang/String;

    .line 65
    const-string v3, "/mnt/sdcard/GTA3/main.5.com.rockstar.gta3.obb"

    iput-object v3, p0, Lcom/rockstar/gta3/GTA3;->expansionFileName:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, "isupdate":Z
    const/4 v1, 0x0

    .line 68
    .local v1, "loglevel":I
    sget-object v3, Lcom/rockstar/gta3/GTA3;->mySelf:Lcom/rockstar/gta3/GTA3;

    invoke-static {v3, v0, v9}, Lcom/AdX/tag/AdXConnect;->getAdXConnectInstance(Landroid/content/Context;ZI)Lcom/AdX/tag/AdXConnect;

    .line 70
    iput v9, p0, Lcom/rockstar/gta3/GTA3;->SpecialBuildType:I

    .line 75
    iput-boolean v8, p0, Lcom/rockstar/gta3/GTA3;->wantsMultitouch:Z

    .line 76
    iput-boolean v8, p0, Lcom/rockstar/gta3/GTA3;->wantsAccelerometer:Z

    .line 77
    invoke-virtual {p0}, Lcom/rockstar/gta3/GTA3;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 78
    .local v2, "res":Landroid/content/res/Resources;
    iput-boolean v8, p0, Lcom/rockstar/gta3/GTA3;->AllowLongPressForExit:Z

    .line 80
    iput-boolean v9, p0, Lcom/rockstar/gta3/GTA3;->AddMovieExtension:Z

    .line 82
    const-string v3, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAkGNYE/MizDPktonusH3WUl935fErABUJ2LUuM/N/kdblucD48Wcu2GtCMG8ypyFFSTUsl1tlRr/DRZYNtJxQnMXOG1la2SKgagNF2wfbtO8NAWeg4JMjoxjBVhwNkVTx+RWOBYN+F9j/VpLyfpsvE28buR/oGq97fJJBakrwT/KdRZMBB3+qLQ1m+9Qgi92vFGuI4rvbmuCYRce7GXRmc7VdM/xX4JwHDieYwMRTS+XuWnvb0X0xVS+d/VuZ93PpwL4Zp1YysBXj0MGvsT+v8n581Cs2RMkw5ccUlkTLpzOnc/fPAkVuRVkBfgRw6BE2BlsGLCSpiVRj+GECd1USLQIDAQAB"

    sput-object v3, Lcom/wardrumstudios/utils/WarDownloaderService;->BASE64_PUBLIC_KEY:Ljava/lang/String;

    .line 84
    const/16 v3, 0x14

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    sput-object v3, Lcom/wardrumstudios/utils/WarDownloaderService;->SALT:[B

    .line 85
    iget-boolean v3, p0, Lcom/rockstar/gta3/GTA3;->UseExpansionPack:Z

    if-eqz v3, :cond_0

    .line 86
    new-array v3, v8, [Lcom/wardrumstudios/utils/WarMedia$XAPKFile;

    iput-object v3, p0, Lcom/rockstar/gta3/GTA3;->xAPKS:[Lcom/wardrumstudios/utils/WarMedia$XAPKFile;

    .line 88
    iget-object v3, p0, Lcom/rockstar/gta3/GTA3;->xAPKS:[Lcom/wardrumstudios/utils/WarMedia$XAPKFile;

    new-instance v4, Lcom/wardrumstudios/utils/WarMedia$XAPKFile;

    const/4 v5, 0x5

    const-wide/32 v6, 0x4dbdf7ec

    invoke-direct {v4, v8, v5, v6, v7}, Lcom/wardrumstudios/utils/WarMedia$XAPKFile;-><init>(ZIJ)V

    aput-object v4, v3, v9

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/rockstar/gta3/GTA3;->CleanupOldGTA3()V

    .line 125
    const v3, 0x7f060038

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/rockstar/gta3/GTA3;->ACCEPT_EULA_BUTTON:Ljava/lang/String;

    .line 126
    const v3, 0x7f060039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/rockstar/gta3/GTA3;->DECLARE_EULA_BUTTON:Ljava/lang/String;

    .line 128
    const v3, 0x7f06003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/rockstar/gta3/GTA3;->EULA1:Ljava/lang/String;

    .line 129
    const v3, 0x7f06003d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/rockstar/gta3/GTA3;->EULA2:Ljava/lang/String;

    .line 130
    const v3, 0x7f06003e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/rockstar/gta3/GTA3;->EULA3:Ljava/lang/String;

    .line 131
    const v3, 0x7f06003f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/rockstar/gta3/GTA3;->EULA4:Ljava/lang/String;

    .line 133
    invoke-super {p0, p1}, Lcom/wardrumstudios/utils/WarMedia;->onCreate(Landroid/os/Bundle;)V

    .line 134
    return-void

    .line 84
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
