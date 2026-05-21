.class Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$CheckUpdateTask;
.super Landroid/os/AsyncTask;
.source "XiaomiUpdateAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckUpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 186
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$1;)V
    .locals 0

    .line 186
    invoke-direct {p0}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$CheckUpdateTask;-><init>()V

    return-void
.end method

.method private getFilterParams()Ljava/lang/String;
    .locals 3

    .line 274
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "screenSize"

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/xiaomi/market/sdk/Client;->DISPLAY_WIDTH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/xiaomi/market/sdk/Client;->DISPLAY_HEIGHT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "resolution"

    .line 278
    sget-object v1, Lcom/xiaomi/market/sdk/Client;->DISPLAY_RESOLUTION:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "density"

    .line 279
    sget v1, Lcom/xiaomi/market/sdk/Client;->DISPLAY_DENSITY:I

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "touchScreen"

    .line 280
    sget v1, Lcom/xiaomi/market/sdk/Client;->TOUCH_SCREEN:I

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "glEsVersion"

    .line 281
    sget-object v1, Lcom/xiaomi/market/sdk/Client;->GLES_VERSION:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "feature"

    .line 282
    sget-object v1, Lcom/xiaomi/market/sdk/Client;->FEATURE:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "library"

    .line 283
    sget-object v1, Lcom/xiaomi/market/sdk/Client;->LIBRARY:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "glExtension"

    .line 284
    sget-object v1, Lcom/xiaomi/market/sdk/Client;->GL_EXTENSION:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sdk"

    .line 285
    sget v1, Lcom/xiaomi/market/sdk/Client;->SDK_VERSION:I

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "version"

    .line 286
    sget-object v1, Lcom/xiaomi/market/sdk/Client;->SYSTEM_VERSION:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "release"

    .line 287
    sget-object v1, Lcom/xiaomi/market/sdk/Client;->RELEASE:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method private parseUpdateInfo(Lorg/json/JSONObject;)Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;
    .locals 4

    const/4 p0, 0x0

    const-string v0, "MarketUpdateAgent"

    if-nez p1, :cond_0

    const-string p1, "update info json obj null"

    .line 296
    invoke-static {v0, p1}, Lcom/xiaomi/market/sdk/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 300
    :cond_0
    sget-boolean v1, Lcom/xiaomi/market/sdk/Utils;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateInfo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/market/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_1
    new-instance v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    invoke-direct {v1}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;-><init>()V

    :try_start_0
    const-string v2, "host"

    .line 306
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->host:Ljava/lang/String;

    const-string v2, "fitness"

    .line 307
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->fitness:I

    const-string v2, "source"

    .line 308
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->source:I

    const-string v2, "updateLog"

    .line 309
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->updateLog:Ljava/lang/String;

    const-string v2, "versionCode"

    .line 310
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->versionCode:I

    const-string v2, "versionName"

    .line 311
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->versionName:Ljava/lang/String;

    const-string v2, "apk"

    .line 312
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->apkUrl:Ljava/lang/String;

    const-string v2, "apkHash"

    .line 313
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->apkHash:Ljava/lang/String;

    const-string v2, "apkSize"

    .line 314
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->apkSize:J

    const-string v2, "matchLanguage"

    .line 315
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->matchLanguage:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get update info failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/market/sdk/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "original content : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/market/sdk/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static showUpdateDialog()V
    .locals 3

    .line 326
    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$100()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 330
    :cond_0
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "MarketUpdateAgent"

    const-string v1, "activity not running!"

    .line 331
    invoke-static {v0, v1}, Lcom/xiaomi/market/sdk/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 334
    :cond_1
    new-instance v1, Lcom/xiaomi/market/sdk/UpdateAlertDialog$Builder;

    invoke-direct {v1, v0}, Lcom/xiaomi/market/sdk/UpdateAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/xiaomi/market/sdk/R$string;->xiaomi_update_sdk_dialog_title:I

    .line 335
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/market/sdk/UpdateAlertDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/xiaomi/market/sdk/UpdateAlertDialog$Builder;

    move-result-object v0

    .line 336
    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$500()Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->updateLog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/market/sdk/UpdateAlertDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/xiaomi/market/sdk/UpdateAlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/xiaomi/market/sdk/R$string;->xiaomi_update_sdk_update_dialog_cancel:I

    const/4 v2, 0x0

    .line 337
    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/market/sdk/UpdateAlertDialog$Builder;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lcom/xiaomi/market/sdk/UpdateAlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/xiaomi/market/sdk/R$string;->xiaomi_update_sdk_update_dialog_ok:I

    new-instance v2, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$CheckUpdateTask$1;

    invoke-direct {v2}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$CheckUpdateTask$1;-><init>()V

    .line 338
    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/market/sdk/UpdateAlertDialog$Builder;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/xiaomi/market/sdk/UpdateAlertDialog$Builder;

    move-result-object v0

    .line 343
    invoke-virtual {v0}, Lcom/xiaomi/market/sdk/UpdateAlertDialog$Builder;->show()Lcom/xiaomi/market/sdk/UpdateAlertDialog;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 4

    .line 194
    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$100()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const/4 v0, 0x4

    .line 196
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez p1, :cond_0

    return-object v0

    .line 198
    :cond_0
    invoke-static {p1}, Lcom/xiaomi/market/sdk/Utils;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p0, 0x3

    .line 199
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 200
    :cond_1
    invoke-static {p1}, Lcom/xiaomi/market/sdk/Utils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$200()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x2

    .line 201
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 204
    :cond_2
    invoke-static {p1}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->getAppInfo(Landroid/content/Context;)Lcom/xiaomi/market/sdk/LocalAppInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$302(Lcom/xiaomi/market/sdk/LocalAppInfo;)Lcom/xiaomi/market/sdk/LocalAppInfo;

    .line 205
    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$300()Lcom/xiaomi/market/sdk/LocalAppInfo;

    move-result-object p1

    if-nez p1, :cond_3

    const/4 p0, 0x5

    .line 206
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 209
    :cond_3
    new-instance p1, Lcom/xiaomi/market/sdk/Connection;

    sget-object v1, Lcom/xiaomi/market/sdk/Constants;->UPDATE_URL:Ljava/lang/String;

    invoke-direct {p1, v1}, Lcom/xiaomi/market/sdk/Connection;-><init>(Ljava/lang/String;)V

    .line 210
    new-instance v1, Lcom/xiaomi/market/sdk/Connection$Parameter;

    invoke-direct {v1, p1}, Lcom/xiaomi/market/sdk/Connection$Parameter;-><init>(Lcom/xiaomi/market/sdk/Connection;)V

    .line 211
    invoke-direct {p0}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$CheckUpdateTask;->getFilterParams()Ljava/lang/String;

    move-result-object v2

    const-string v3, "info"

    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/market/sdk/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/market/sdk/Connection$Parameter;

    .line 212
    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$300()Lcom/xiaomi/market/sdk/LocalAppInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/xiaomi/market/sdk/LocalAppInfo;->packageName:Ljava/lang/String;

    const-string v3, "packageName"

    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/market/sdk/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/market/sdk/Connection$Parameter;

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$300()Lcom/xiaomi/market/sdk/LocalAppInfo;

    move-result-object v3

    iget v3, v3, Lcom/xiaomi/market/sdk/LocalAppInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "versionCode"

    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/market/sdk/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/market/sdk/Connection$Parameter;

    .line 214
    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$300()Lcom/xiaomi/market/sdk/LocalAppInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/xiaomi/market/sdk/LocalAppInfo;->signature:Ljava/lang/String;

    const-string v3, "signature"

    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/market/sdk/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/market/sdk/Connection$Parameter;

    .line 215
    sget v2, Lcom/xiaomi/market/sdk/Client;->SDK_VERSION:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sdk"

    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/market/sdk/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/market/sdk/Connection$Parameter;

    .line 216
    invoke-static {}, Lcom/xiaomi/market/sdk/Client;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "la"

    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/market/sdk/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/market/sdk/Connection$Parameter;

    .line 217
    invoke-static {}, Lcom/xiaomi/market/sdk/Client;->getCountry()Ljava/lang/String;

    move-result-object v2

    const-string v3, "co"

    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/market/sdk/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/market/sdk/Connection$Parameter;

    .line 218
    invoke-static {}, Lcom/xiaomi/market/sdk/Client;->getRegion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "lo"

    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/market/sdk/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/market/sdk/Connection$Parameter;

    .line 219
    invoke-static {}, Lcom/xiaomi/market/sdk/Client;->getDevice()Ljava/lang/String;

    move-result-object v2

    const-string v3, "device"

    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/market/sdk/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/market/sdk/Connection$Parameter;

    .line 220
    invoke-static {}, Lcom/xiaomi/market/sdk/Client;->getDeviceType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "deviceType"

    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/market/sdk/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/market/sdk/Connection$Parameter;

    .line 221
    invoke-static {}, Lcom/xiaomi/market/sdk/Client;->getCpuArch()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cpuArchitecture"

    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/market/sdk/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/market/sdk/Connection$Parameter;

    .line 222
    invoke-static {}, Lcom/xiaomi/market/sdk/Client;->getModel()Ljava/lang/String;

    move-result-object v2

    const-string v3, "model"

    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/market/sdk/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/market/sdk/Connection$Parameter;

    const-string v2, "xiaomiSDKVersion"

    const-string v3, "11"

    .line 223
    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/market/sdk/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/market/sdk/Connection$Parameter;

    .line 224
    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$400()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "1"

    goto :goto_0

    :cond_4
    const-string v2, "0"

    :goto_0
    const-string v3, "debug"

    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/market/sdk/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/market/sdk/Connection$Parameter;

    .line 225
    sget-object v2, Lcom/xiaomi/market/sdk/Client;->SYSTEM_VERSION:Ljava/lang/String;

    const-string v3, "os"

    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/market/sdk/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/market/sdk/Connection$Parameter;

    .line 226
    invoke-static {}, Lcom/xiaomi/market/sdk/Client;->getMiuiBigVersionName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "miuiBigVersionName"

    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/market/sdk/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/market/sdk/Connection$Parameter;

    .line 227
    invoke-static {}, Lcom/xiaomi/market/sdk/Client;->getMiuiBigVersionCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "miuiBigVersionCode"

    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/market/sdk/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/market/sdk/Connection$Parameter;

    .line 228
    invoke-static {}, Lcom/xiaomi/market/sdk/Client;->getOSVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "osV2"

    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/market/sdk/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/market/sdk/Connection$Parameter;

    .line 229
    invoke-static {}, Lcom/xiaomi/market/sdk/Client;->getOSBigVersionName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "osBigVersionName"

    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/market/sdk/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/market/sdk/Connection$Parameter;

    .line 230
    invoke-static {}, Lcom/xiaomi/market/sdk/Client;->getOSBigVersionCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "osBigVersionCode"

    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/market/sdk/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/market/sdk/Connection$Parameter;

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/xiaomi/market/sdk/Connection;->mUrl:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MarketUpdateAgent"

    invoke-static {v2, v1}, Lcom/xiaomi/market/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parameters: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/market/sdk/Connection;->getParameter()Lcom/xiaomi/market/sdk/Connection$Parameter;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaomi/market/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    sget-object v1, Lcom/xiaomi/market/sdk/Connection$NetworkError;->OK:Lcom/xiaomi/market/sdk/Connection$NetworkError;

    invoke-virtual {p1}, Lcom/xiaomi/market/sdk/Connection;->requestJSON()Lcom/xiaomi/market/sdk/Connection$NetworkError;

    move-result-object v3

    if-ne v1, v3, :cond_6

    .line 235
    invoke-virtual {p1}, Lcom/xiaomi/market/sdk/Connection;->getResponse()Lorg/json/JSONObject;

    move-result-object p1

    .line 236
    invoke-direct {p0, p1}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$CheckUpdateTask;->parseUpdateInfo(Lorg/json/JSONObject;)Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$502(Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;)Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    .line 237
    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$500()Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 238
    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$500()Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/xiaomi/market/sdk/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$500()Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object p0

    iget p0, p0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->fitness:I

    if-nez p0, :cond_5

    const/4 p0, 0x0

    goto :goto_1

    :cond_5
    const/4 p0, 0x1

    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 186
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$CheckUpdateTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2

    const/4 p0, 0x0

    .line 248
    invoke-static {p0}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$602(Z)Z

    .line 249
    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$100()Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    if-nez p0, :cond_0

    return-void

    .line 253
    :cond_0
    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$700()Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of p0, p0, Landroid/app/Activity;

    if-nez p0, :cond_1

    goto :goto_0

    .line 268
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_4

    .line 269
    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$CheckUpdateTask;->showUpdateDialog()V

    goto :goto_1

    .line 254
    :cond_2
    :goto_0
    new-instance p0, Lcom/xiaomi/market/sdk/UpdateResponse;

    invoke-direct {p0}, Lcom/xiaomi/market/sdk/UpdateResponse;-><init>()V

    .line 255
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3

    .line 256
    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$500()Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->updateLog:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/market/sdk/UpdateResponse;->updateLog:Ljava/lang/String;

    .line 257
    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$500()Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v0

    iget v0, v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->versionCode:I

    iput v0, p0, Lcom/xiaomi/market/sdk/UpdateResponse;->versionCode:I

    .line 258
    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$500()Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/market/sdk/UpdateResponse;->versionName:Ljava/lang/String;

    .line 259
    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$500()Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->apkSize:J

    iput-wide v0, p0, Lcom/xiaomi/market/sdk/UpdateResponse;->apkSize:J

    .line 260
    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$500()Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->apkHash:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/market/sdk/UpdateResponse;->apkHash:Ljava/lang/String;

    .line 261
    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$500()Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->diffSize:J

    iput-wide v0, p0, Lcom/xiaomi/market/sdk/UpdateResponse;->diffSize:J

    .line 262
    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$500()Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->host:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$500()Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->apkUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/market/sdk/Connection;->connect(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/market/sdk/UpdateResponse;->path:Ljava/lang/String;

    .line 263
    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$500()Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->matchLanguage:Z

    iput-boolean v0, p0, Lcom/xiaomi/market/sdk/UpdateResponse;->matchLanguage:Z

    .line 265
    :cond_3
    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$800()Lcom/xiaomi/market/sdk/XiaomiUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 266
    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->access$800()Lcom/xiaomi/market/sdk/XiaomiUpdateListener;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1, p0}, Lcom/xiaomi/market/sdk/XiaomiUpdateListener;->onUpdateReturned(ILcom/xiaomi/market/sdk/UpdateResponse;)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 186
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$CheckUpdateTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    const-string p0, "MarketUpdateAgent"

    const-string v0, "start to check update"

    .line 189
    invoke-static {p0, v0}, Lcom/xiaomi/market/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
