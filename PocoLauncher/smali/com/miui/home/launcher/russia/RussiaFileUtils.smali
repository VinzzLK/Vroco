.class public Lcom/miui/home/launcher/russia/RussiaFileUtils;
.super Ljava/lang/Object;
.source "RussiaFileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/russia/RussiaFileUtils$UpdateModel;
    }
.end annotation


# static fields
.field private static isPreProcess:Z

.field private static sIconMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsInParse:Z

.field private static sXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public static synthetic $r8$lambda$5_C3ZN2L5BFAy0SCbKZlfkOlWBg(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->lambda$removeRussiaApps$1(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AXAr9ZxHjfTG9r7NhxGhf6ffdWI(Ljava/util/Map;ZJLjava/util/List;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->lambda$getNeedAddRussiaApps$3(Ljava/util/Map;ZJLjava/util/List;Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z9aLxkyseukVxej7S52dedyLl_w(Ljava/lang/String;)Lcom/miui/home/launcher/russia/RussiaFileUtils$UpdateModel;
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->analysisFile(Ljava/lang/String;)Lcom/miui/home/launcher/russia/RussiaFileUtils$UpdateModel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qhHSq1Ai-nNUleVLc4dC3S462GY(Ljava/util/Map;Ljava/util/List;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->lambda$getNeedRemoveRussiaApps$4(Ljava/util/Map;Ljava/util/List;Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v1f9-8t0bToqqnOmQ13g7PVn4_k(Ljava/util/Map;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->lambda$getNeedAddRussiaApps$2(Ljava/util/Map;Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zbXY6tBE1bsZX074yf8DUQl1bE4(Lcom/miui/home/launcher/russia/RussiaFileUtils$UpdateModel;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->lambda$analysisCloudRussiaFile$0(Lcom/miui/home/launcher/russia/RussiaFileUtils$UpdateModel;)V

    return-void
.end method

.method private static addRussiaApps(Lcom/miui/home/launcher/russia/RussiaFileUtils$UpdateModel;Lcom/miui/home/launcher/Launcher;)V
    .locals 19

    move-object/from16 v0, p0

    .line 155
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->getRussiaFolderDefaultId()J

    move-result-wide v1

    move-object/from16 v12, p1

    .line 156
    invoke-virtual {v12, v1, v2}, Lcom/miui/home/launcher/Launcher;->getFolderInfoById(J)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 157
    iget-object v2, v0, Lcom/miui/home/launcher/russia/RussiaFileUtils$UpdateModel;->needAddRussiaApps:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 158
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->getContents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 159
    iget-object v0, v0, Lcom/miui/home/launcher/russia/RussiaFileUtils$UpdateModel;->needAddRussiaApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    add-int/lit8 v1, v1, 0x1

    .line 160
    iput v1, v2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 161
    iget-wide v5, v2, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iget-wide v7, v2, Lcom/miui/home/launcher/ItemInfo;->container:J

    iget v10, v2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    const/4 v11, 0x0

    move-object/from16 v3, p1

    move-object v4, v2

    move v9, v1

    invoke-virtual/range {v3 .. v11}, Lcom/miui/home/launcher/Launcher;->addItemToWorkspace(Lcom/miui/home/launcher/ItemInfo;JJIILjava/lang/Runnable;)V

    .line 162
    new-instance v3, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;

    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x40

    const-wide/16 v17, 0x0

    const-string v15, ""

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;-><init>(Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 163
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->getInstance()Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->addItemToDb(Lcom/miui/home/launcher/russia/RussiaPreInstallApp;)V

    .line 164
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->getInstance()Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->getDataSource()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static analysisCloudRussiaFile(Ljava/lang/String;)V
    .locals 2

    .line 84
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->noNeedAnalysis()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 87
    invoke-static {v0}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->setIsInParse(Z)V

    .line 88
    sget-object v0, Lcom/miui/home/launcher/russia/RussiaFileUtils$$ExternalSyntheticLambda5;->INSTANCE:Lcom/miui/home/launcher/russia/RussiaFileUtils$$ExternalSyntheticLambda5;

    sget-object v1, Lcom/miui/home/launcher/russia/RussiaFileUtils$$ExternalSyntheticLambda4;->INSTANCE:Lcom/miui/home/launcher/russia/RussiaFileUtils$$ExternalSyntheticLambda4;

    invoke-static {v0, v1, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private static analysisEnd(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "analysisEnd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RussiaFileUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cloudRussia"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 181
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 183
    invoke-static {v1}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->deleteDirectory(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "delete cloudRussia fail"

    .line 186
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 188
    invoke-static {p1}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->setPreProcess(Z)V

    const/4 v0, 0x0

    .line 189
    sput-object v0, Lcom/miui/home/launcher/russia/RussiaFileUtils;->sXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 190
    sput-object v0, Lcom/miui/home/launcher/russia/RussiaFileUtils;->sIconMap:Ljava/util/Map;

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isFinishParseRussiaFile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getModeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 192
    invoke-static {p1}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->setIsInParse(Z)V

    return-void
.end method

.method private static analysisFile(Ljava/lang/String;)Lcom/miui/home/launcher/russia/RussiaFileUtils$UpdateModel;
    .locals 5

    .line 210
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "RussiaFileUtils"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p0, "finish analysis cause uri is empty"

    .line 211
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 214
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "finish analysis cause launcher is null"

    .line 216
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 219
    :cond_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLoading()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string p0, "finish analysis cause launcher is not finishLoading"

    .line 220
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 223
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->getRussiaFolderDefaultId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/miui/home/launcher/Launcher;->isFolderIdValid(J)Z

    move-result v3

    if-nez v3, :cond_3

    const-string p0, "russia folder has removed"

    .line 224
    invoke-static {v0, p0}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->analysisEnd(Landroid/content/Context;Ljava/lang/String;)V

    return-object v2

    .line 228
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->isPreProcess()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_4
    invoke-static {p0, v0}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->processZip(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    .line 229
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->isPreProcess()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lcom/miui/home/launcher/russia/RussiaFileUtils;->sXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    const-string v3, "russia_folder_preinstall"

    .line 232
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 233
    invoke-static {v3}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->getXmlParser(Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    :goto_1
    if-nez v3, :cond_6

    const-string p0, "finish analysis cause parser is null"

    .line 236
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 240
    :cond_6
    invoke-static {v3}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->parseRussiaFile(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;

    move-result-object v1

    .line 241
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAllLoadedShortcut()Ljava/util/ArrayList;

    move-result-object v0

    .line 242
    new-instance v3, Lcom/miui/home/launcher/russia/RussiaFileUtils$UpdateModel;

    invoke-direct {v3, v2}, Lcom/miui/home/launcher/russia/RussiaFileUtils$UpdateModel;-><init>(Lcom/miui/home/launcher/russia/RussiaFileUtils$1;)V

    .line 243
    invoke-static {v1, v0}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->getNeedRemoveRussiaApps(Ljava/util/Map;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v3, Lcom/miui/home/launcher/russia/RussiaFileUtils$UpdateModel;->needRemoveRussiaApps:Ljava/util/List;

    .line 244
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->isPreProcess()Z

    move-result v2

    invoke-static {v1, v0, p0, v2}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->getNeedAddRussiaApps(Ljava/util/Map;Ljava/util/List;Ljava/util/Map;Z)Ljava/util/List;

    move-result-object p0

    iput-object p0, v3, Lcom/miui/home/launcher/russia/RussiaFileUtils$UpdateModel;->needAddRussiaApps:Ljava/util/List;

    return-object v3
.end method

.method private static canAddHome(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/russia/RussiaFileUtils$UpdateModel;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string p1, "RussiaFileUtils"

    if-nez p0, :cond_1

    const-string p0, "analysisCloudRussiaFile launcher is null"

    .line 144
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 147
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLoading()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "analysisCloudRussiaFile launcher is not finishLoading"

    .line 148
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static closeInputStream(Ljava/io/InputStream;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 516
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "RussiaFileUtils"

    const-string v1, "error closeInputStream"

    .line 518
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private static closeOutputStream(Ljava/io/OutputStream;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 526
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "RussiaFileUtils"

    const-string v1, "error closeOutputStream"

    .line 528
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static convertInputStreamToBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 71
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "RussiaFileUtils"

    const-string v2, "convertInputStreamToBitmap error"

    .line 73
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method public static deleteDirectory(Ljava/io/File;)V
    .locals 4

    .line 196
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void

    .line 200
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 202
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 203
    invoke-static {v3}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->deleteDirectory(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 206
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private static getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "http://schemas.android.com/apk/res-auto/com.miui.home"

    .line 481
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 483
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static getDrawable(Ljava/util/Map;ZLjava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 288
    sget-object p1, Lcom/miui/home/launcher/russia/RussiaFileUtils;->sIconMap:Ljava/util/Map;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 289
    sget-object p0, Lcom/miui/home/launcher/russia/RussiaFileUtils;->sIconMap:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 291
    :cond_0
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->getInputFormPath(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 293
    invoke-static {p0}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->convertInputStreamToBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 295
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object p1, p2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 298
    :goto_0
    invoke-static {p0}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->closeInputStream(Ljava/io/InputStream;)V

    move-object p0, p1

    :goto_1
    return-object p0
.end method

.method private static getInputFormPath(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    new-array v1, v0, [Ljava/lang/String;

    .line 306
    invoke-static {p0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "RussiaFileUtils"

    const-string v1, "getInputFormPath error"

    .line 308
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static getNeedAddRussiaApps(Ljava/util/Map;Ljava/util/List;Ljava/util/Map;Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 250
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 251
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 253
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->getRussiaFolderDefaultId()J

    move-result-wide v3

    .line 255
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->getRussiaPreInstallApps()Ljava/util/Set;

    move-result-object p0

    .line 256
    new-instance v0, Lcom/miui/home/launcher/russia/RussiaFileUtils$$ExternalSyntheticLambda2;

    invoke-direct {v0, v7}, Lcom/miui/home/launcher/russia/RussiaFileUtils$$ExternalSyntheticLambda2;-><init>(Ljava/util/Map;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 263
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 264
    invoke-interface {v7, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "already deleted pkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RussiaFileUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-interface {v7, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 269
    :cond_1
    new-instance p0, Lcom/miui/home/launcher/russia/RussiaFileUtils$$ExternalSyntheticLambda0;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/russia/RussiaFileUtils$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;ZJLjava/util/List;)V

    invoke-interface {v7, p0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-object v6
.end method

.method private static getNeedRemoveRussiaApps(Ljava/util/Map;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 318
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 319
    new-instance v1, Lcom/miui/home/launcher/russia/RussiaFileUtils$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/russia/RussiaFileUtils$$ExternalSyntheticLambda3;-><init>(Ljava/util/Map;Ljava/util/List;)V

    invoke-interface {p1, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getRussiaFolderDefaultId()J
    .locals 4

    .line 489
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    const-string v1, "russiaFolderDefaultId"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/launcher/common/BaseSharePreference;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getRussiaPreInstallApps()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 493
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v2, "russiaFolderDefaultPreinstallApps"

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/common/BaseSharePreference;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static getXmlParser(Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 5

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getXmlParser russiaXmlPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RussiaFileUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return-object v2

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-array v3, v0, [Ljava/lang/String;

    .line 336
    invoke-static {p0, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 337
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 338
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    const-string/jumbo v0, "utf-8"

    .line 339
    invoke-interface {v2, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    invoke-static {p0}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->closeInputStream(Ljava/io/InputStream;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, p0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v4, v2

    move-object v2, p0

    move-object p0, v4

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object p0, v2

    :goto_0
    :try_start_2
    const-string v3, "getXmlParser error"

    .line 341
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 343
    invoke-static {v2}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->closeInputStream(Ljava/io/InputStream;)V

    move-object v2, p0

    :goto_1
    return-object v2

    :goto_2
    invoke-static {v2}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->closeInputStream(Ljava/io/InputStream;)V

    .line 344
    throw v0
.end method

.method public static hasDownloadUri(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "russiaFileDownloadUri"

    const/4 v1, 0x0

    .line 509
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isFinishParseRussiaFile()Z
    .locals 4

    .line 497
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/allapps/LauncherModeController;->DESKTOP:Lcom/miui/home/launcher/allapps/LauncherMode;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 498
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/allapps/LauncherModeController;->DRAWER:Lcom/miui/home/launcher/allapps/LauncherMode;

    if-eq v0, v1, :cond_0

    return v2

    .line 501
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFinishParseRussiaFile"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/allapps/LauncherMode;->getModeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized isInParse()Z
    .locals 2

    const-class v0, Lcom/miui/home/launcher/russia/RussiaFileUtils;

    monitor-enter v0

    .line 534
    :try_start_0
    sget-boolean v1, Lcom/miui/home/launcher/russia/RussiaFileUtils;->sIsInParse:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized isPreProcess()Z
    .locals 2

    const-class v0, Lcom/miui/home/launcher/russia/RussiaFileUtils;

    monitor-enter v0

    .line 542
    :try_start_0
    sget-boolean v1, Lcom/miui/home/launcher/russia/RussiaFileUtils;->isPreProcess:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static synthetic lambda$analysisCloudRussiaFile$0(Lcom/miui/home/launcher/russia/RussiaFileUtils$UpdateModel;)V
    .locals 2

    .line 91
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    .line 92
    invoke-static {v0, p0}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->canAddHome(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/russia/RussiaFileUtils$UpdateModel;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    .line 93
    invoke-static {p0}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->setIsInParse(Z)V

    return-void

    .line 96
    :cond_0
    invoke-static {p0, v0}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->addRussiaApps(Lcom/miui/home/launcher/russia/RussiaFileUtils$UpdateModel;Lcom/miui/home/launcher/Launcher;)V

    .line 97
    invoke-static {p0, v0}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->removeRussiaApps(Lcom/miui/home/launcher/russia/RussiaFileUtils$UpdateModel;Lcom/miui/home/launcher/Launcher;)V

    const-string p0, "analysis completed"

    .line 98
    invoke-static {v0, p0}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->analysisEnd(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$getNeedAddRussiaApps$2(Ljava/util/Map;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 2

    .line 258
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "already exists pkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " title = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RussiaFileUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static synthetic lambda$getNeedAddRussiaApps$3(Ljava/util/Map;ZJLjava/util/List;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 3

    .line 270
    new-instance v0, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallShortcutInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallShortcutInfo;-><init>()V

    .line 271
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "pkgName"

    .line 272
    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    iput-object v1, v0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    const-string p5, "icon"

    .line 274
    invoke-virtual {p6, p5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p0, p1, p5}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->getDrawable(Ljava/util/Map;ZLjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x1

    .line 275
    iput p0, v0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    const/16 p0, 0x11

    .line 276
    iput p0, v0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    .line 277
    iput-wide p2, v0, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-string/jumbo p0, "title"

    .line 278
    invoke-virtual {p6, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/ItemInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 279
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "needAddToHomeApps item title = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " pkg = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " drawable = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RussiaFileUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static synthetic lambda$getNeedRemoveRussiaApps$4(Ljava/util/Map;Ljava/util/List;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 2

    .line 320
    iget v0, p2, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 321
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "need remove russia app "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RussiaFileUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static synthetic lambda$removeRussiaApps$1(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 1

    .line 172
    check-cast p1, Lcom/miui/home/launcher/AppInfo;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/Launcher;->bindAppsRemoved(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static markRussiaFolderUri(Landroid/content/Intent;Lcom/miui/home/launcher/Launcher;)V
    .locals 4

    const-string v0, "RussiaFileUtils"

    :try_start_0
    const-string v1, "russia_folder"

    .line 351
    const-class v2, Landroid/net/Uri;

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 352
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 353
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive RU_LAYOUT_DOWNLOAD downloadUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "resultCode"

    const/high16 v3, -0x80000000

    .line 354
    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 355
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resultCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "russiaFileDownloadUri"

    .line 357
    invoke-static {p1, p0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sput-object p0, Lcom/miui/home/launcher/russia/RussiaFileUtils;->sIconMap:Ljava/util/Map;

    .line 359
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->isFinishParseRussiaFile()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    .line 360
    invoke-static {p0}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->setPreProcess(Z)V

    .line 361
    invoke-static {v1, p1}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->processZip(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Map;

    .line 363
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->unRegisterRussiaNetworkCallback()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "onReceive RU_LAYOUT_DOWNLOAD error"

    .line 366
    invoke-static {v0, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public static needRequestRussiaLayout(Landroid/content/Context;)Z
    .locals 1

    .line 505
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaPreInstallUtils;->isRussiaRom()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->hasDownloadUri(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static noNeedAnalysis()Z
    .locals 14

    .line 104
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->isInParse()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "RussiaFileUtils"

    if-eqz v0, :cond_0

    const-string v0, "analysisCloudRussiaFile inParse"

    .line 105
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 108
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaPreInstallUtils;->isRussiaRom()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "analysisCloudRussiaFile is not russia rom"

    .line 109
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 112
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->isFinishParseRussiaFile()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "analysisCloudRussiaFile already finish"

    .line 113
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 116
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const/4 v3, 0x0

    const-string v4, "russiaFileDownloadUri"

    invoke-static {v0, v4, v3}, Lcom/miui/home/launcher/common/PreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "analysisCloudRussiaFile russiaFileDownloadUri is empty"

    .line 117
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 121
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-wide/16 v3, -0x1

    const-string v5, "lastRetryTime"

    .line 122
    invoke-static {v0, v5, v3, v4}, Lcom/miui/home/launcher/common/PreferenceUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v3

    const-wide/16 v6, 0x0

    const-string v8, "lastRetryCount"

    .line 123
    invoke-static {v0, v8, v6, v7}, Lcom/miui/home/launcher/common/PreferenceUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v6

    .line 124
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->getTodayTime()J

    move-result-wide v9

    cmp-long v11, v3, v9

    if-nez v11, :cond_4

    const-wide/16 v12, 0x3

    cmp-long v12, v6, v12

    if-lez v12, :cond_4

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "analysisCloudRussiaFile last retry time is "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " lastRetryCount is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 129
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "lastRetryTime = "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " lastRetryCount = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " currentMode = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/allapps/LauncherMode;->getModeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x1

    if-nez v11, :cond_5

    add-long/2addr v6, v1

    .line 131
    invoke-static {v0, v8, v6, v7}, Lcom/miui/home/launcher/common/PreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0

    .line 133
    :cond_5
    invoke-static {v0, v5, v9, v10}, Lcom/miui/home/launcher/common/PreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 134
    invoke-static {v0, v8, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private static parseRussiaFile(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "title"

    const-string v1, "icon"

    const-string v2, "packageName"

    const-string v3, "RussiaFileUtils"

    .line 452
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 455
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 456
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "market_auto_install"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 457
    invoke-static {p0, v2}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 458
    invoke-static {p0, v1}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 459
    invoke-static {p0, v0}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 460
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 461
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 462
    invoke-virtual {v8, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    invoke-virtual {v8, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-virtual {v8, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    invoke-interface {v4, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseRussiaFile item pkg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " title = "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " icon = "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "parseRussiaFile error"

    .line 471
    invoke-static {v3, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v4
.end method

.method private static processFile(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/io/ByteArrayOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/ByteArrayOutputStream;",
            ")V"
        }
    .end annotation

    .line 417
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 422
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->isPreProcess()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string p1, "russia_folder_preinstall"

    .line 423
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 424
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object p0

    .line 425
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    sput-object p0, Lcom/miui/home/launcher/russia/RussiaFileUtils;->sXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 426
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string/jumbo p2, "utf-8"

    invoke-interface {p0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object p0, v2

    goto :goto_0

    .line 428
    :cond_0
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 429
    :try_start_1
    invoke-static {p1}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->convertInputStreamToBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 431
    sget-object p3, Lcom/miui/home/launcher/russia/RussiaFileUtils;->sIconMap:Ljava/util/Map;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    move-object p0, v2

    move-object v2, p1

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v4, v2

    move-object v2, p1

    move-object p1, v4

    goto :goto_3

    :catch_0
    move-exception p0

    move-object v4, v2

    move-object v2, p1

    move-object p1, v4

    goto :goto_1

    .line 435
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_3

    .line 436
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 438
    :cond_3
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 439
    :try_start_3
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/io/FileOutputStream;->write([B)V

    .line 440
    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 445
    :goto_0
    invoke-static {v2}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->closeInputStream(Ljava/io/InputStream;)V

    .line 446
    invoke-static {p0}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->closeOutputStream(Ljava/io/OutputStream;)V

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v4, p1

    move-object p1, p0

    move-object p0, v4

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v4, p1

    move-object p1, p0

    move-object p0, v4

    goto :goto_1

    :catchall_2
    move-exception p0

    move-object p1, v2

    goto :goto_3

    :catch_2
    move-exception p0

    move-object p1, v2

    :goto_1
    :try_start_4
    const-string p2, "RussiaFileUtils"

    const-string p3, "error processZipItem"

    .line 443
    invoke-static {p2, p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 445
    invoke-static {v2}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->closeInputStream(Ljava/io/InputStream;)V

    .line 446
    invoke-static {p1}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->closeOutputStream(Ljava/io/OutputStream;)V

    :goto_2
    return-void

    :catchall_3
    move-exception p0

    .line 445
    :goto_3
    invoke-static {v2}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->closeInputStream(Ljava/io/InputStream;)V

    .line 446
    invoke-static {p1}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->closeOutputStream(Ljava/io/OutputStream;)V

    .line 447
    throw p0
.end method

.method private static processZip(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "RussiaFileUtils"

    .line 371
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    .line 376
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 378
    :try_start_1
    new-instance v4, Ljava/util/zip/ZipInputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 380
    :goto_0
    :try_start_2
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 381
    invoke-static {p1, v1, v4, v2}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->processZipItem(Landroid/content/Context;Ljava/util/Map;Ljava/util/zip/ZipInputStream;Ljava/util/zip/ZipEntry;)V

    goto :goto_0

    .line 383
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unzip "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " success"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 387
    invoke-static {v4}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->closeInputStream(Ljava/io/InputStream;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v2, v4

    goto :goto_3

    :catch_0
    move-exception p0

    move-object v2, v4

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v3, v2

    goto :goto_3

    :catch_2
    move-exception p0

    move-object v3, v2

    :goto_1
    :try_start_3
    const-string p1, "getRussiaAllInputStreamFromZip error"

    .line 385
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 387
    invoke-static {v2}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->closeInputStream(Ljava/io/InputStream;)V

    .line 388
    :goto_2
    invoke-static {v3}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->closeInputStream(Ljava/io/InputStream;)V

    return-object v1

    :catchall_2
    move-exception p0

    .line 387
    :goto_3
    invoke-static {v2}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->closeInputStream(Ljava/io/InputStream;)V

    .line 388
    invoke-static {v3}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->closeInputStream(Ljava/io/InputStream;)V

    .line 389
    throw p0
.end method

.method private static processZipItem(Landroid/content/Context;Ljava/util/Map;Ljava/util/zip/ZipInputStream;Ljava/util/zip/ZipEntry;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/util/zip/ZipEntry;",
            ")V"
        }
    .end annotation

    const-string v0, "RussiaFileUtils"

    const/4 v1, 0x0

    .line 396
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "zipEntry item = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-virtual {p3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 398
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v1, 0x400

    :try_start_1
    new-array v1, v1, [B

    .line 401
    :goto_0
    invoke-virtual {p2, v1}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x0

    .line 402
    invoke-virtual {v2, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 405
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "cloudRussia"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 406
    invoke-static {p0, p2, p1, v2}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->processFile(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/io/ByteArrayOutputStream;)V

    .line 407
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "unzip item "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " success"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_3

    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    :goto_1
    :try_start_2
    const-string p1, "error processZipItem"

    .line 410
    invoke-static {v0, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 412
    :cond_1
    :goto_2
    invoke-static {v1}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->closeOutputStream(Ljava/io/OutputStream;)V

    return-void

    :goto_3
    invoke-static {v1}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->closeOutputStream(Ljava/io/OutputStream;)V

    .line 413
    throw p0
.end method

.method private static removeRussiaApps(Lcom/miui/home/launcher/russia/RussiaFileUtils$UpdateModel;Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 170
    iget-object p0, p0, Lcom/miui/home/launcher/russia/RussiaFileUtils$UpdateModel;->needRemoveRussiaApps:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 171
    new-instance v0, Lcom/miui/home/launcher/russia/RussiaFileUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/russia/RussiaFileUtils$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized setIsInParse(Z)V
    .locals 1

    const-class v0, Lcom/miui/home/launcher/russia/RussiaFileUtils;

    monitor-enter v0

    .line 538
    :try_start_0
    sput-boolean p0, Lcom/miui/home/launcher/russia/RussiaFileUtils;->sIsInParse:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setPreProcess(Z)V
    .locals 1

    const-class v0, Lcom/miui/home/launcher/russia/RussiaFileUtils;

    monitor-enter v0

    .line 546
    :try_start_0
    sput-boolean p0, Lcom/miui/home/launcher/russia/RussiaFileUtils;->isPreProcess:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
