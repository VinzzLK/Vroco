.class public Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;
.super Lcom/miui/home/launcher/LauncherAssistantCompat;
.source "LauncherAssistantCompatGoogle.java"


# instance fields
.field private mLauncherAssistantForMIUIInGoogleMinusScreen:Lcom/miui/home/launcher/LauncherAssistantCompatMIUIInGoogleMinusScreen;

.field private mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;


# direct methods
.method public static synthetic $r8$lambda$0Uyoc2o0QkvT-NJNC5w9_P-w9ls(Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->lambda$onCreate$0()V

    return-void
.end method

.method constructor <init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/LauncherAssistantCompat;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isNewGlobalAssistantInstalled()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "LauncherAssistantCompatGoogle"

    const-string p2, "needConnectMiui"

    .line 40
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance p1, Lcom/miui/home/launcher/LauncherAssistantCompatMIUIInGoogleMinusScreen;

    iget-object p2, p0, Lcom/miui/home/launcher/LauncherAssistantCompat;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p1, p2}, Lcom/miui/home/launcher/LauncherAssistantCompatMIUIInGoogleMinusScreen;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherAssistantForMIUIInGoogleMinusScreen:Lcom/miui/home/launcher/LauncherAssistantCompatMIUIInGoogleMinusScreen;

    :cond_0
    return-void
.end method

.method private createClientOptions(Landroid/content/Context;)Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;
    .locals 4

    .line 199
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "open_personal_assistant"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p1

    .line 200
    new-instance v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;

    invoke-direct {v0, p1, v1, v1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;-><init>(ZZZ)V

    .line 201
    const-class p1, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;

    const-class v2, Ljava/lang/String;

    const-string v3, "b"

    invoke-static {p1, v3, v2}, Lcom/miui/launcher/utils/ReflectUtils;->getField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 203
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 204
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAssistantCompat;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 206
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private synthetic lambda$onCreate$0()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reconnect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherAssistantCompatGoogle"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->reconnect()V

    :cond_0
    return-void
.end method

.method private onWindowLayoutParamsChange()V
    .locals 3

    .line 248
    const-class v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    const-class v1, Landroid/view/WindowManager$LayoutParams;

    const-string v2, "o"

    invoke-static {v0, v2, v1}, Lcom/miui/launcher/utils/ReflectUtils;->getField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 252
    :cond_0
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 253
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherAssistantCompat;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    const-string v2, "LauncherMinusOneScreen"

    .line 254
    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 255
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x5

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v2, 0x1

    .line 257
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 258
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 260
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public createLauncherClient(Lcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 4

    .line 213
    new-instance p1, Lcom/miui/home/launcher/overlay/LauncherOverlayGoogle;

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompat;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p1, v0}, Lcom/miui/home/launcher/overlay/LauncherOverlayGoogle;-><init>(Lcom/miui/home/launcher/Launcher;)V

    .line 214
    new-instance v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherAssistantCompat;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 215
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->createClientOptions(Landroid/content/Context;)Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;-><init>(Landroid/app/Activity;Lcom/google/android/libraries/gsa/launcherclient/LauncherClientCallbacks;Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;Landroid/os/Looper;)V

    .line 216
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/overlay/LauncherOverlayGoogle;->setClient(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)V

    .line 217
    iput-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    .line 218
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createLauncherClient "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LauncherAssistantCompatGoogle"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->onWindowLayoutParamsChange()V

    return-void
.end method

.method public destroyLauncherClient()V
    .locals 2

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroyLauncherClient "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherAssistantCompatGoogle"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onDetachedFromWindow()V

    .line 235
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->disconnect()V

    .line 236
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompat;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->setLauncherOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V

    .line 237
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onDestroy()V

    .line 238
    iput-object v1, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherAssistantForMIUIInGoogleMinusScreen:Lcom/miui/home/launcher/LauncherAssistantCompatMIUIInGoogleMinusScreen;

    if-eqz v0, :cond_1

    .line 242
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAssistantCompatMIUIInGoogleMinusScreen;->destroyLauncherClient()V

    .line 243
    iput-object v1, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherAssistantForMIUIInGoogleMinusScreen:Lcom/miui/home/launcher/LauncherAssistantCompatMIUIInGoogleMinusScreen;

    :cond_1
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0, p1, p3}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 144
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherAssistantForMIUIInGoogleMinusScreen:Lcom/miui/home/launcher/LauncherAssistantCompatMIUIInGoogleMinusScreen;

    if-eqz p0, :cond_1

    .line 145
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/LauncherAssistantCompatMIUIInGoogleMinusScreen;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAttachedToWindow "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherAssistantCompatGoogle"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onAttachedToWindow()V

    .line 118
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->onWindowLayoutParamsChange()V

    .line 121
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherAssistantForMIUIInGoogleMinusScreen:Lcom/miui/home/launcher/LauncherAssistantCompatMIUIInGoogleMinusScreen;

    if-eqz p0, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAssistantCompatMIUIInGoogleMinusScreen;->onAttachedToWindow()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Lcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 1

    .line 47
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->createLauncherClient(Lcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 48
    new-instance p1, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/common/LauncherAsyncTaskExecutorHelper;->waitForUnlockAndRunOnUiThread(Ljava/lang/Runnable;Ljava/util/function/Consumer;)V

    .line 55
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherAssistantForMIUIInGoogleMinusScreen:Lcom/miui/home/launcher/LauncherAssistantCompatMIUIInGoogleMinusScreen;

    if-eqz p0, :cond_0

    .line 56
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/LauncherAssistantCompatMIUIInGoogleMinusScreen;->onCreate(Lcom/miui/home/launcher/allapps/LauncherMode;)V

    :cond_0
    return-void
.end method

.method public onDarkModeChanged()V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompat;->mPackageName:Ljava/lang/String;

    const-string v1, "com.google.android.googlequicksearchbox"

    .line 187
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->reattachOverlay()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherAssistantCompatGoogle"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onDestroy()V

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    .line 108
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherAssistantForMIUIInGoogleMinusScreen:Lcom/miui/home/launcher/LauncherAssistantCompatMIUIInGoogleMinusScreen;

    if-eqz p0, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAssistantCompatMIUIInGoogleMinusScreen;->onDestroy()V

    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDetachedFromWindow "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherAssistantCompatGoogle"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onDetachedFromWindow()V

    .line 133
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherAssistantForMIUIInGoogleMinusScreen:Lcom/miui/home/launcher/LauncherAssistantCompatMIUIInGoogleMinusScreen;

    if-eqz p0, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAssistantCompatMIUIInGoogleMinusScreen;->onDetachedFromWindow()V

    :cond_1
    return-void
.end method

.method public onHomeGestureStart()V
    .locals 2

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHomeGestureStart "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherAssistantCompatGoogle"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz v0, :cond_0

    .line 161
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAssistantCompat;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isVisible()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->hideOverlay(Z)V

    :cond_0
    return-void
.end method

.method public onHomeIntent(Landroid/content/Intent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onHomeIntentAfterFilter(Landroid/content/Intent;)Z
    .locals 1

    .line 172
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onHomeIntentAfterFilter "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LauncherAssistantCompatGoogle"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz p1, :cond_0

    .line 174
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAssistantCompat;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isVisible()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->hideOverlay(Z)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onLauncherModelReload(Lcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 0

    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherAssistantCompatGoogle"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz p0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherAssistantCompatGoogle"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz p0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onResume()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStart "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherAssistantCompatGoogle"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onStart()V

    .line 67
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherAssistantForMIUIInGoogleMinusScreen:Lcom/miui/home/launcher/LauncherAssistantCompatMIUIInGoogleMinusScreen;

    if-eqz p0, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAssistantCompatMIUIInGoogleMinusScreen;->onStart()V

    :cond_1
    return-void
.end method

.method public onStateChanged(Lcom/miui/home/launcher/LauncherState;)V
    .locals 2

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherAssistantCompatGoogle"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz p1, :cond_0

    .line 153
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAssistantCompat;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isVisible()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->hideOverlay(Z)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherAssistantCompatGoogle"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onStop()V

    .line 95
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherAssistantForMIUIInGoogleMinusScreen:Lcom/miui/home/launcher/LauncherAssistantCompatMIUIInGoogleMinusScreen;

    if-eqz p0, :cond_1

    .line 96
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAssistantCompatMIUIInGoogleMinusScreen;->onStop()V

    :cond_1
    return-void
.end method

.method public updateLauncherClient(Lcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 1

    .line 224
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz p1, :cond_0

    .line 225
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompat;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->createClientOptions(Landroid/content/Context;)Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->setClientOptions(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;)V

    .line 226
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->onWindowLayoutParamsChange()V

    :cond_0
    return-void
.end method
