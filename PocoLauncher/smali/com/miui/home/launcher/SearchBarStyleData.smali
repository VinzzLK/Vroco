.class public Lcom/miui/home/launcher/SearchBarStyleData;
.super Ljava/lang/Object;
.source "SearchBarStyleData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;,
        Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;,
        Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean;,
        Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/miui/home/launcher/SearchBarStyleData;


# instance fields
.field private lastUpdateTime:J

.field private mExpId:Ljava/lang/String;

.field private mHasInit:Z

.field private mIsSupportBrowser:Z

.field private mIsSupportQuickSearchBox:Z

.field private mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

.field private mTarget:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;


# direct methods
.method public static synthetic $r8$lambda$05PP2YQG5obIdImByYFY5MqT3DY(Lcom/miui/home/launcher/SearchBarStyleData;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarStyleData;->lambda$initData$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Lcom/miui/home/launcher/SearchBarStyleData;

    invoke-direct {v0}, Lcom/miui/home/launcher/SearchBarStyleData;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/SearchBarStyleData;->sInstance:Lcom/miui/home/launcher/SearchBarStyleData;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mHasInit:Z

    .line 47
    iput-boolean v0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mIsSupportBrowser:Z

    .line 49
    iput-boolean v0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mIsSupportQuickSearchBox:Z

    .line 60
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->getSearchBarDataUpdateTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->lastUpdateTime:J

    return-void
.end method

.method private formatSearchBarResource(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string p0, "searchBarResource://"

    .line 267
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 268
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 269
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    .line 270
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getDataDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/SearchBarResource/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const-string v1, "SearchBarStyleData"

    if-eqz p0, :cond_0

    .line 272
    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    .line 273
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "searchbar resource transform success,resource "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 275
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "searchbar resource transform failed,resource not exist."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object p1
.end method

.method private getCloudData()Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean;
    .locals 5

    .line 179
    new-instance p0, Lcom/mi/google/gson/Gson;

    invoke-direct {p0}, Lcom/mi/google/gson/Gson;-><init>()V

    .line 180
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "home_search"

    const-string/jumbo v2, "testData"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getCloudDataString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check cloud data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SearchBarStyleData"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/util/SearchBarStyleUtil;->getClientIdHash(Landroid/content/Context;)I

    move-result v1

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device hash is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->getSearchBarDataFromCloud()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 187
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->setSearchBarDataFromCloud(Ljava/lang/String;)V

    .line 189
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 190
    const-class v1, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean;

    invoke-virtual {p0, v0, v1}, Lcom/mi/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance()Lcom/miui/home/launcher/SearchBarStyleData;
    .locals 1

    .line 56
    sget-object v0, Lcom/miui/home/launcher/SearchBarStyleData;->sInstance:Lcom/miui/home/launcher/SearchBarStyleData;

    return-object v0
.end method

.method private getProviderData()Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;
    .locals 3

    .line 169
    new-instance p0, Lcom/mi/google/gson/Gson;

    invoke-direct {p0}, Lcom/mi/google/gson/Gson;-><init>()V

    .line 170
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->getSearchBarData()Ljava/lang/String;

    move-result-object v0

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check provider data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SearchBarStyleData"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    const-class v1, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;

    invoke-virtual {p0, v0, v1}, Lcom/mi/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private handleExpInfo()V
    .locals 4

    .line 241
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getSearchBarShowInitiate(Landroid/content/Context;)Z

    move-result v0

    .line 242
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    const-string v2, ""

    if-eqz v1, :cond_1

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    invoke-virtual {v3}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->getExpId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    const-string v3, "-initiate"

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mExpId:Ljava/lang/String;

    :cond_1
    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 247
    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    const-string v0, "SearchBarStyleData"

    const-string/jumbo v1, "user setting in lastest data"

    .line 248
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mTarget:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;

    if-eqz v0, :cond_4

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mExpId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mExpId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const-string v2, "."

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mTarget:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;

    invoke-virtual {v1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;->getExpId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mExpId:Ljava/lang/String;

    .line 254
    :cond_4
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mExpId:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->setSearchBarAnalyTestCode(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private handleJumpDataFromCloudData(Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean;I)Z
    .locals 4

    .line 196
    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean;->getJumpTestList()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 197
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 198
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;

    .line 200
    invoke-virtual {v2}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;->getJumpUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;->getTestHashStart()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v2}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;->getTestHashEnd()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v2}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;->getTestHashStart()I

    move-result v3

    if-lt p2, v3, :cond_2

    invoke-virtual {v2}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;->getTestHashEnd()I

    move-result v3

    if-ge p2, v3, :cond_2

    .line 202
    iget-boolean p1, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mIsSupportBrowser:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mIsSupportQuickSearchBox:Z

    if-eqz p1, :cond_1

    .line 203
    invoke-static {v2}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;->access$000(Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "mibrowser://"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 204
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    const-string p2, "mibrowser"

    invoke-static {p1, p2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->setSearchBarClickTarget(Landroid/content/Context;Ljava/lang/String;)V

    .line 205
    iput-object v2, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mTarget:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;

    goto :goto_1

    .line 206
    :cond_0
    invoke-static {v2}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;->access$000(Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "qsb://"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 207
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    const-string p2, "qsb"

    invoke-static {p1, p2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->setSearchBarClickTarget(Landroid/content/Context;Ljava/lang/String;)V

    .line 208
    iput-object v2, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mTarget:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;

    goto :goto_1

    .line 211
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarStyleData;->resetConfig()V

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mTarget:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;

    if-nez p0, :cond_4

    .line 218
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    const-string p1, ""

    invoke-static {p0, p1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->setSearchBarClickTarget(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    return v0
.end method

.method private handleJumpDataFromProvider(Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;)Z
    .locals 3

    .line 111
    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;->getJump()Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;

    move-result-object p1

    .line 112
    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;->getJumpUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_2

    .line 114
    iget-boolean v0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mIsSupportQuickSearchBox:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mIsSupportBrowser:Z

    if-eqz v0, :cond_1

    .line 115
    invoke-static {p1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;->access$000(Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "mibrowser://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v2, "mibrowser"

    invoke-static {v0, v2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->setSearchBarClickTarget(Landroid/content/Context;Ljava/lang/String;)V

    .line 117
    iput-object p1, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mTarget:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;

    goto :goto_0

    .line 118
    :cond_0
    invoke-static {p1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;->access$000(Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "qsb://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v2, "qsb"

    invoke-static {v0, v2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->setSearchBarClickTarget(Landroid/content/Context;Ljava/lang/String;)V

    .line 120
    iput-object p1, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mTarget:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;

    goto :goto_0

    .line 123
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarStyleData;->resetConfig()V

    const/4 p0, 0x1

    return p0

    .line 127
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->setSearchBarClickTarget(Landroid/content/Context;Ljava/lang/String;)V

    .line 129
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mTarget:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;

    if-nez p0, :cond_4

    .line 130
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->setSearchBarClickTarget(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private handleStyleDataFromCloudData(Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean;I)V
    .locals 3

    .line 224
    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean;->getUiTestList()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 225
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 226
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    .line 227
    invoke-virtual {v1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->getTestHashStart()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->getTestHashEnd()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->getTestHashStart()I

    move-result v2

    if-lt p2, v2, :cond_1

    invoke-virtual {v1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->getTestHashEnd()I

    move-result v2

    if-ge p2, v2, :cond_1

    .line 228
    iput-object v1, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    .line 229
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getSearchBarEngineResource(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 230
    invoke-virtual {v1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->isEngineChainChange()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->setLeftIcon(Ljava/lang/String;)V

    .line 233
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In test data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    invoke-virtual {v2}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SearchBarStyleData"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->isShowSetting()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->getExpId()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    const-string p0, ""

    :goto_1
    invoke-static {p1, p0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->setSearchBarTestCode(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private handleStyleDataFromProvider(Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;)V
    .locals 1

    .line 92
    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;->getStyle()Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 94
    iput-object p1, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    .line 95
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getSearchBarEngineResource(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->isEngineChainChange()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 97
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->setLeftIcon(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->getLeftIcon()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 99
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->getLeftIcon()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/SearchBarStyleData;->formatSearchBarResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->setLeftIcon(Ljava/lang/String;)V

    .line 102
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->getRightIcon()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 103
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->getRightIcon()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/SearchBarStyleData;->formatSearchBarResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->setRightIcon(Ljava/lang/String;)V

    .line 105
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "In test data provider: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SearchBarStyleData"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->isShowSetting()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->getExpId()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    const-string p0, ""

    :goto_1
    invoke-static {p1, p0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->setSearchBarTestCode(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private initData()V
    .locals 6

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    .line 145
    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mTarget:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;

    const-string v0, ""

    .line 146
    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mExpId:Ljava/lang/String;

    .line 147
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarStyleData;->updateDataTime()V

    .line 148
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarStyleData;->refreshTargetSupport()V

    .line 149
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarStyleData;->getProviderData()Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;

    move-result-object v0

    .line 150
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarStyleData;->getCloudData()Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 153
    invoke-virtual {v1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean;->getUpdateTime()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;->getUpdateTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 154
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/SearchBarStyleData;->initDataForCloudData(Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean;)V

    goto :goto_0

    .line 156
    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/SearchBarStyleData;->initDataForProvider(Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 159
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/SearchBarStyleData;->initDataForProvider(Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;)V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 161
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/SearchBarStyleData;->initDataForCloudData(Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean;)V

    goto :goto_0

    .line 163
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarStyleData;->resetConfig()V

    const-string p0, "SearchBarStyleData"

    const-string v0, "data both empty"

    .line 164
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private initDataForCloudData(Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean;)V
    .locals 2

    .line 258
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/util/SearchBarStyleUtil;->getClientIdHash(Landroid/content/Context;)I

    move-result v0

    .line 259
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/SearchBarStyleData;->handleJumpDataFromCloudData(Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean;I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 262
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/SearchBarStyleData;->handleStyleDataFromCloudData(Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean;I)V

    .line 263
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarStyleData;->handleExpInfo()V

    return-void
.end method

.method private initDataForProvider(Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;)V
    .locals 4

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 79
    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;->getStartTime()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;->getEndTime()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/SearchBarStyleData;->handleJumpDataFromProvider(Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 87
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/SearchBarStyleData;->handleStyleDataFromProvider(Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;)V

    .line 88
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarStyleData;->handleExpInfo()V

    return-void

    .line 80
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provider data not match time:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SearchBarStyleData"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarStyleData;->resetConfig()V

    return-void
.end method

.method private synthetic lambda$initData$0()V
    .locals 0

    .line 291
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarStyleData;->initData()V

    return-void
.end method

.method private needUpdateData()Z
    .locals 4

    .line 64
    iget-boolean v0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mHasInit:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/home/launcher/SearchBarStyleData;->lastUpdateTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1499700

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private refreshTargetSupport()V
    .locals 1

    .line 73
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/util/SearchBarStyleUtil;->isSupportBrowser(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mIsSupportBrowser:Z

    .line 74
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/util/SearchBarStyleUtil;->isSupportQuickSearchBoxNew(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mIsSupportQuickSearchBox:Z

    return-void
.end method

.method private resetConfig()V
    .locals 1

    .line 282
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->setSearchBarClickTarget(Landroid/content/Context;Ljava/lang/String;)V

    .line 283
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->setSearchBarTestCode(Landroid/content/Context;Ljava/lang/String;)V

    .line 284
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->setSearchBarAnalyTestCode(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 10

    .line 316
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 320
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07066d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 321
    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    invoke-static {v2}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->access$100(Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x4

    new-array v4, v3, [[I

    const/4 v5, 0x1

    new-array v6, v5, [I

    const v7, 0x10100a7

    const/4 v8, 0x0

    aput v7, v6, v8

    aput-object v6, v4, v8

    new-array v6, v5, [I

    const v7, 0x101009c

    aput v7, v6, v8

    aput-object v6, v4, v5

    new-array v6, v5, [I

    const v7, 0x10102fe

    aput v7, v6, v8

    const/4 v7, 0x2

    aput-object v6, v4, v7

    new-array v6, v8, [I

    const/4 v9, 0x3

    aput-object v6, v4, v9

    new-array v3, v3, [I

    aput v2, v3, v8

    aput v2, v3, v5

    aput v2, v3, v7

    aput v2, v3, v9

    .line 324
    new-instance v5, Landroid/content/res/ColorStateList;

    invoke-direct {v5, v4, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 325
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 326
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 327
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 328
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->getBackgroundBorderColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    invoke-static {v0}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->access$200(Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;)I

    move-result v0

    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->getBackgroundBorderColor()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v3, v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 331
    :cond_1
    new-instance p0, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {p0, v5, v3, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 334
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method public getClickTargetUri()Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    .line 300
    :try_start_0
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mTarget:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;->getJumpUri()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception p0

    .line 302
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public getExpId()Ljava/lang/String;
    .locals 0

    .line 312
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mExpId:Ljava/lang/String;

    return-object p0
.end method

.method public getLeftIconDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 349
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarStyleData;->hasStyleData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->getLeftIcon()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/miui/home/launcher/common/Utilities;->getDrawableFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 353
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRightIconDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 360
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->getRightIcon()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/miui/home/launcher/common/Utilities;->getDrawableFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 362
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public hasStyleData()Z
    .locals 0

    .line 344
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public initData(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 288
    iput-boolean v0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mHasInit:Z

    if-eqz p1, :cond_0

    .line 290
    new-instance p1, Lcom/miui/home/launcher/SearchBarStyleData$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/SearchBarStyleData$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/SearchBarStyleData;)V

    invoke-static {p1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 294
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarStyleData;->initData()V

    :goto_0
    return-void
.end method

.method public initDataIfNeeded()Z
    .locals 2

    .line 136
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarStyleData;->needUpdateData()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 138
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/SearchBarStyleData;->initData(Z)V

    :cond_0
    return v0
.end method

.method public isSupportBrowser()Z
    .locals 0

    .line 368
    iget-boolean p0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mIsSupportBrowser:Z

    return p0
.end method

.method public isUserBlur()Z
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->getBlurRadius()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->getBlurLayerColor()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public updateDataTime()V
    .locals 3

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->lastUpdateTime:J

    .line 69
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    iget-wide v1, p0, Lcom/miui/home/launcher/SearchBarStyleData;->lastUpdateTime:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->setSearchBarDataUpdateTime(J)V

    return-void
.end method
