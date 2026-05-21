.class public Lcom/miui/home/launcher/install/AutoInstallsLayout;
.super Ljava/lang/Object;
.source "AutoInstallsLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/install/AutoInstallsLayout$MamlParser;,
        Lcom/miui/home/launcher/install/AutoInstallsLayout$GadgetParser;,
        Lcom/miui/home/launcher/install/AutoInstallsLayout$ResolveShortcutParser;,
        Lcom/miui/home/launcher/install/AutoInstallsLayout$ResolveParser;,
        Lcom/miui/home/launcher/install/AutoInstallsLayout$MarketAutoInstallParser;,
        Lcom/miui/home/launcher/install/AutoInstallsLayout$Folder2x2_9Parser;,
        Lcom/miui/home/launcher/install/AutoInstallsLayout$Folder2x2_4Parser;,
        Lcom/miui/home/launcher/install/AutoInstallsLayout$FolderParser;,
        Lcom/miui/home/launcher/install/AutoInstallsLayout$PendingWidgetParser;,
        Lcom/miui/home/launcher/install/AutoInstallsLayout$ShortcutParser;,
        Lcom/miui/home/launcher/install/AutoInstallsLayout$AppShortcutParser;,
        Lcom/miui/home/launcher/install/AutoInstallsLayout$AutoInstallParser;,
        Lcom/miui/home/launcher/install/AutoInstallsLayout$TagParser;
    }
.end annotation


# instance fields
.field private mAllApps:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private final mColumnCount:I

.field protected final mContext:Landroid/content/Context;

.field private final mLayoutIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mRootTag:Ljava/lang/String;

.field private final mRowCount:I

.field private mSerialNumber:J

.field private final mSourceRes:Landroid/content/res/Resources;

.field private final mValuesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/appwidget/AppWidgetHost;",
            "Landroid/content/res/Resources;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;)V"
        }
    .end annotation

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p1, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mContext:Landroid/content/Context;

    .line 190
    iput-object p2, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 193
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mValuesList:Ljava/util/List;

    .line 194
    iput-object p5, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mRootTag:Ljava/lang/String;

    .line 196
    iput-object p3, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    .line 197
    iput-object p4, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mLayoutIds:Ljava/util/List;

    .line 199
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mRowCount:I

    .line 200
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mColumnCount:I

    .line 202
    invoke-static {p1}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object p1

    .line 203
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/home/library/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mSerialNumber:J

    .line 204
    iput-object p6, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mAllApps:Ljava/util/Collection;

    return-void
.end method

.method static synthetic access$1000(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 60
    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->getFolderTitle(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/miui/home/launcher/install/AutoInstallsLayout;)Ljava/util/HashMap;
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->getResolveElementsMap()Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Landroid/content/res/XmlResourceParser;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 0

    .line 60
    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->parseGadget(Landroid/content/res/XmlResourceParser;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 60
    invoke-static {p0, p1}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/install/AutoInstallsLayout;)Ljava/util/List;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mValuesList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I
    .locals 0

    .line 60
    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->getAttributeResourceValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/install/AutoInstallsLayout;)Landroid/content/res/Resources;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic access$700(Landroid/content/res/XmlResourceParser;Landroid/content/ContentValues;Ljava/lang/String;II)Landroid/content/ContentValues;
    .locals 0

    .line 60
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->parseGadget(Landroid/content/res/XmlResourceParser;Landroid/content/ContentValues;Ljava/lang/String;II)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/home/launcher/install/AutoInstallsLayout;)Landroid/util/ArrayMap;
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->getFolderElementsMap()Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-static {p0, p1}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->beginDocument(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V

    return-void
.end method

.method private static beginDocument(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 806
    :goto_0
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_4

    .line 813
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "defaultScreen"

    .line 814
    invoke-static {p0, p1}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 815
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "AutoInstalls"

    if-nez v0, :cond_1

    .line 816
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->setDefaultScreen(J)V

    .line 817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDefaultScreen:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string p1, "ignoreAlign"

    .line 819
    invoke-static {p0, p1}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 820
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 821
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->setIgnoreAlignScreenList(Ljava/lang/String;)V

    .line 822
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set ignore align screen:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    .line 825
    :cond_3
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected start tag: found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", expected "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 810
    :cond_4
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convertToDistanceFromEnd(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 830
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 831
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    add-int/2addr p1, v0

    .line 833
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static get(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/miui/home/launcher/allapps/LauncherMode;Ljava/util/Collection;)Lcom/miui/home/launcher/install/AutoInstallsLayout;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/appwidget/AppWidgetHost;",
            "Lcom/miui/home/launcher/allapps/LauncherMode;",
            "Ljava/util/Collection<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;)",
            "Lcom/miui/home/launcher/install/AutoInstallsLayout;"
        }
    .end annotation

    .line 71
    invoke-static {p2}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode(Lcom/miui/home/launcher/allapps/LauncherMode;)Z

    move-result p2

    const/4 v0, 0x0

    const-string v1, "AutoInstalls"

    if-eqz p2, :cond_0

    const-string p0, "not support elderly mode layout"

    .line 72
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 75
    :cond_0
    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result p2

    invoke-static {}, Lcom/miui/launcher/utils/LauncherUtils;->getUserSystemId()I

    move-result v2

    if-eq p2, v2, :cond_1

    const-string p0, "not support other userId"

    .line 76
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 80
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string v2, "android.autoinstalls.config.action.PLAY_AUTO_INSTALL"

    invoke-static {v2, p2}, Lcom/miui/home/launcher/install/PlayAutoInstallHelper;->findSystemApk(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/util/Pair;

    move-result-object p2

    if-nez p2, :cond_2

    const-string p0, "not found pai config apk"

    .line 82
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 85
    :cond_2
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Landroid/content/res/Resources;

    invoke-static {p0, v0, p2, p1, p3}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->get(Landroid/content/Context;Ljava/lang/String;Landroid/content/res/Resources;Landroid/appwidget/AppWidgetHost;Ljava/util/Collection;)Lcom/miui/home/launcher/install/AutoInstallsLayout;

    move-result-object p0

    return-object p0
.end method

.method private static get(Landroid/content/Context;Ljava/lang/String;Landroid/content/res/Resources;Landroid/appwidget/AppWidgetHost;Ljava/util/Collection;)Lcom/miui/home/launcher/install/AutoInstallsLayout;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            "Landroid/appwidget/AppWidgetHost;",
            "Ljava/util/Collection<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;)",
            "Lcom/miui/home/launcher/install/AutoInstallsLayout;"
        }
    .end annotation

    .line 90
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 91
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotseatMaxCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "default_layout_%dx%d_h%s"

    .line 90
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "xml"

    .line 92
    invoke-virtual {p2, v1, v2, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const-string v7, "Formatted layout: "

    const-string v8, "AutoInstalls"

    if-nez v6, :cond_0

    .line 95
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not found. Trying layout without hosteat"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v5, [Ljava/lang/Object;

    .line 97
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "default_layout_%dx%d"

    .line 96
    invoke-static {v0, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-virtual {p2, v1, v2, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    :cond_0
    if-nez v6, :cond_1

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not found. Trying the default layout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "default_layout"

    .line 103
    invoke-virtual {p2, v0, v2, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    :cond_1
    if-nez v6, :cond_2

    .line 107
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Layout definition not found in package: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 110
    :cond_2
    new-instance p1, Lcom/miui/home/launcher/install/AutoInstallsLayout;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string/jumbo v5, "workspace"

    move-object v0, p1

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/launcher/install/AutoInstallsLayout;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/util/Collection;)V

    return-object p1
.end method

.method private static getAttributeResourceValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I
    .locals 1

    const-string v0, "http://schemas.android.com/apk/res-auto/com.miui.home"

    .line 856
    invoke-interface {p0, v0, p1, p2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x0

    .line 860
    invoke-interface {p0, v0, p1, p2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    :cond_0
    return v0
.end method

.method private static getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "http://schemas.android.com/apk/res-auto/com.miui.home"

    .line 844
    invoke-interface {p0, v0, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 846
    invoke-interface {p0, v0, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getFavoritesItemNewId()J
    .locals 2

    .line 346
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherProvider;->generateNewId()J

    move-result-wide v0

    return-wide v0
.end method

.method private getFolderElementsMap()Landroid/util/ArrayMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/miui/home/launcher/install/AutoInstallsLayout$TagParser;",
            ">;"
        }
    .end annotation

    .line 321
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 322
    new-instance v1, Lcom/miui/home/launcher/install/AutoInstallsLayout$AppShortcutParser;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/home/launcher/install/AutoInstallsLayout$AppShortcutParser;-><init>(Lcom/miui/home/launcher/install/AutoInstallsLayout;Lcom/miui/home/launcher/install/AutoInstallsLayout$1;)V

    const-string v3, "appicon"

    invoke-virtual {v0, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    new-instance v1, Lcom/miui/home/launcher/install/AutoInstallsLayout$AutoInstallParser;

    invoke-direct {v1, p0, v2}, Lcom/miui/home/launcher/install/AutoInstallsLayout$AutoInstallParser;-><init>(Lcom/miui/home/launcher/install/AutoInstallsLayout;Lcom/miui/home/launcher/install/AutoInstallsLayout$1;)V

    const-string v2, "autoinstall"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    new-instance v1, Lcom/miui/home/launcher/install/AutoInstallsLayout$ShortcutParser;

    iget-object v2, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    invoke-direct {v1, p0, v2}, Lcom/miui/home/launcher/install/AutoInstallsLayout$ShortcutParser;-><init>(Lcom/miui/home/launcher/install/AutoInstallsLayout;Landroid/content/res/Resources;)V

    const-string/jumbo v2, "shortcut"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    new-instance v1, Lcom/miui/home/launcher/install/AutoInstallsLayout$MarketAutoInstallParser;

    iget-object v2, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    invoke-direct {v1, p0, v2}, Lcom/miui/home/launcher/install/AutoInstallsLayout$MarketAutoInstallParser;-><init>(Lcom/miui/home/launcher/install/AutoInstallsLayout;Landroid/content/res/Resources;)V

    const-string v2, "market_auto_install"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    new-instance v1, Lcom/miui/home/launcher/install/AutoInstallsLayout$ResolveParser;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/install/AutoInstallsLayout$ResolveParser;-><init>(Lcom/miui/home/launcher/install/AutoInstallsLayout;)V

    const-string p0, "resolve"

    invoke-virtual {v0, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static getFolderTitle(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "title"

    const/4 v1, 0x0

    .line 867
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->getAttributeResourceValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 869
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 871
    :cond_0
    invoke-static {p0, v0}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 872
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 873
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1001ed

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 875
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result p1

    if-nez p1, :cond_2

    return-object p0

    :cond_2
    const-string p1, ":"

    .line 878
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 879
    aget-object p2, p1, v1

    const-string v0, "com.miui.home"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    return-object p0

    .line 882
    :cond_3
    array-length p2, p1

    const/4 v0, 0x2

    if-ge p2, v0, :cond_4

    return-object p0

    .line 886
    :cond_4
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 887
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "com.vroco.launcher:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x1

    aget-object p1, p1, p2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_5
    return-object p0
.end method

.method private getLayoutElementsMap()Landroid/util/ArrayMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/miui/home/launcher/install/AutoInstallsLayout$TagParser;",
            ">;"
        }
    .end annotation

    .line 331
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 332
    new-instance v1, Lcom/miui/home/launcher/install/AutoInstallsLayout$AppShortcutParser;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/home/launcher/install/AutoInstallsLayout$AppShortcutParser;-><init>(Lcom/miui/home/launcher/install/AutoInstallsLayout;Lcom/miui/home/launcher/install/AutoInstallsLayout$1;)V

    const-string v3, "appicon"

    invoke-virtual {v0, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    new-instance v1, Lcom/miui/home/launcher/install/AutoInstallsLayout$AutoInstallParser;

    invoke-direct {v1, p0, v2}, Lcom/miui/home/launcher/install/AutoInstallsLayout$AutoInstallParser;-><init>(Lcom/miui/home/launcher/install/AutoInstallsLayout;Lcom/miui/home/launcher/install/AutoInstallsLayout$1;)V

    const-string v3, "autoinstall"

    invoke-virtual {v0, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    new-instance v1, Lcom/miui/home/launcher/install/AutoInstallsLayout$FolderParser;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/install/AutoInstallsLayout$FolderParser;-><init>(Lcom/miui/home/launcher/install/AutoInstallsLayout;)V

    const-string v3, "folder"

    invoke-virtual {v0, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    new-instance v1, Lcom/miui/home/launcher/install/AutoInstallsLayout$Folder2x2_4Parser;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/install/AutoInstallsLayout$Folder2x2_4Parser;-><init>(Lcom/miui/home/launcher/install/AutoInstallsLayout;)V

    const-string v3, "folder_2x2_4"

    invoke-virtual {v0, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    new-instance v1, Lcom/miui/home/launcher/install/AutoInstallsLayout$Folder2x2_9Parser;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/install/AutoInstallsLayout$Folder2x2_9Parser;-><init>(Lcom/miui/home/launcher/install/AutoInstallsLayout;)V

    const-string v3, "folder_2x2_9"

    invoke-virtual {v0, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    new-instance v1, Lcom/miui/home/launcher/install/AutoInstallsLayout$PendingWidgetParser;

    invoke-direct {v1, p0, v2}, Lcom/miui/home/launcher/install/AutoInstallsLayout$PendingWidgetParser;-><init>(Lcom/miui/home/launcher/install/AutoInstallsLayout;Lcom/miui/home/launcher/install/AutoInstallsLayout$1;)V

    const-string v2, "appwidget"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    new-instance v1, Lcom/miui/home/launcher/install/AutoInstallsLayout$ShortcutParser;

    iget-object v2, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    invoke-direct {v1, p0, v2}, Lcom/miui/home/launcher/install/AutoInstallsLayout$ShortcutParser;-><init>(Lcom/miui/home/launcher/install/AutoInstallsLayout;Landroid/content/res/Resources;)V

    const-string/jumbo v2, "shortcut"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    new-instance v1, Lcom/miui/home/launcher/install/AutoInstallsLayout$ResolveParser;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/install/AutoInstallsLayout$ResolveParser;-><init>(Lcom/miui/home/launcher/install/AutoInstallsLayout;)V

    const-string v2, "resolve"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    new-instance v1, Lcom/miui/home/launcher/install/AutoInstallsLayout$GadgetParser;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/install/AutoInstallsLayout$GadgetParser;-><init>(Lcom/miui/home/launcher/install/AutoInstallsLayout;)V

    const-string v2, "gadget"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    new-instance v1, Lcom/miui/home/launcher/install/AutoInstallsLayout$MamlParser;

    iget-object v2, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    invoke-direct {v1, p0, v2}, Lcom/miui/home/launcher/install/AutoInstallsLayout$MamlParser;-><init>(Lcom/miui/home/launcher/install/AutoInstallsLayout;Landroid/content/res/Resources;)V

    const-string p0, "maml"

    invoke-virtual {v0, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private getResolveElementsMap()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/home/launcher/install/AutoInstallsLayout$TagParser;",
            ">;"
        }
    .end annotation

    .line 1024
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1025
    new-instance v1, Lcom/miui/home/launcher/install/AutoInstallsLayout$AppShortcutParser;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/home/launcher/install/AutoInstallsLayout$AppShortcutParser;-><init>(Lcom/miui/home/launcher/install/AutoInstallsLayout;Lcom/miui/home/launcher/install/AutoInstallsLayout$1;)V

    const-string v2, "appicon"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    new-instance v1, Lcom/miui/home/launcher/install/AutoInstallsLayout$ResolveShortcutParser;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/install/AutoInstallsLayout$ResolveShortcutParser;-><init>(Lcom/miui/home/launcher/install/AutoInstallsLayout;)V

    const-string/jumbo p0, "shortcut"

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private parseAndAddNode(Landroid/content/res/XmlResourceParser;Landroid/util/ArrayMap;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/miui/home/launcher/install/AutoInstallsLayout$TagParser;",
            ">;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "include"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p2, 0x0

    const-string/jumbo v0, "workspace"

    .line 261
    invoke-static {p1, v0, p2}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->getAttributeResourceValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    .line 264
    invoke-direct {p0, p1, p3}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->parseLayout(ILandroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void

    .line 269
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "container"

    .line 271
    invoke-static {p1, v1}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "hotseat"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "cellX"

    if-eqz v2, :cond_2

    const-wide/16 v4, -0x65

    const-string v2, "rank"

    .line 274
    invoke-static {p1, v2}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v6, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mColumnCount:I

    invoke-static {v2, v6}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->convertToDistanceFromEnd(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 273
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-wide/16 v4, -0x64

    const-string v2, "screen"

    .line 278
    invoke-static {p1, v2}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 277
    invoke-virtual {v0, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v2, "x"

    .line 280
    invoke-static {p1, v2}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v6, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mColumnCount:I

    invoke-static {v2, v6}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->convertToDistanceFromEnd(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 279
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "y"

    .line 282
    invoke-static {p1, v2}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mRowCount:I

    invoke-static {v2, v3}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->convertToDistanceFromEnd(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cellY"

    .line 281
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :goto_0
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 285
    iget-wide v1, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mSerialNumber:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v1, "profileId"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 287
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object p0

    .line 288
    invoke-virtual {p2, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/install/AutoInstallsLayout$TagParser;

    if-nez p2, :cond_3

    .line 290
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring unknown element tag: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AutoInstalls"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 293
    :cond_3
    invoke-interface {p2, p1, v0, p3}, Lcom/miui/home/launcher/install/AutoInstallsLayout$TagParser;->parseAndAdd(Landroid/content/res/XmlResourceParser;Landroid/content/ContentValues;Landroid/database/sqlite/SQLiteDatabase;)Z

    return-void
.end method

.method private static parseGadget(Landroid/content/res/XmlResourceParser;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 1

    const/4 v0, 0x0

    .line 617
    invoke-static {p0, p1, p2, v0, v0}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->parseGadget(Landroid/content/res/XmlResourceParser;Landroid/content/ContentValues;Ljava/lang/String;II)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method private static parseGadget(Landroid/content/res/XmlResourceParser;Landroid/content/ContentValues;Ljava/lang/String;II)Landroid/content/ContentValues;
    .locals 2

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseGadget:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoInstalls"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 596
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "clock3x4"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_1
    const-string v1, "clock2x4"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_2
    const-string v1, "clock1x4"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_3
    const-string v1, "google_original_search"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "google_search"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_5
    const-string v1, "mtz"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_6
    const-string v1, "search"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 602
    :pswitch_0
    invoke-static {p1}, Lcom/miui/home/launcher/install/DefaultLayoutHelper;->addClock3x4(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0

    .line 600
    :pswitch_1
    invoke-static {p1}, Lcom/miui/home/launcher/install/DefaultLayoutHelper;->addClock2x4(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0

    .line 598
    :pswitch_2
    invoke-static {p1}, Lcom/miui/home/launcher/install/DefaultLayoutHelper;->addClock1x4(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0

    .line 608
    :pswitch_3
    invoke-static {p1, p3, p4}, Lcom/miui/home/launcher/install/DefaultLayoutHelper;->addGoogleOriginalSearchWidget(Landroid/content/ContentValues;II)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0

    :pswitch_4
    const/16 p0, 0xd

    .line 606
    invoke-static {p1, p0}, Lcom/miui/home/launcher/install/DefaultLayoutHelper;->addNoMtzGadget(Landroid/content/ContentValues;I)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0

    :pswitch_5
    const-string/jumbo p2, "uri"

    .line 610
    invoke-static {p0, p2}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/miui/home/launcher/install/DefaultLayoutHelper;->addMtzGadget(Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0

    .line 604
    :pswitch_6
    invoke-static {p1}, Lcom/miui/home/launcher/install/DefaultLayoutHelper;->addSearchWidget(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_1
    const/4 p0, 0x0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x36059a58 -> :sswitch_6
        0x1a7b3 -> :sswitch_5
        0x1994426e -> :sswitch_4
        0x275c7dd0 -> :sswitch_3
        0x4043c7df -> :sswitch_2
        0x4043cba0 -> :sswitch_1
        0x4043cf61 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseLayout(ILandroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 241
    iget-object v0, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mRootTag:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->beginDocument(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V

    .line 242
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 244
    invoke-direct {p0}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->getLayoutElementsMap()Landroid/util/ArrayMap;

    move-result-object v1

    .line 246
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 247
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_2

    :cond_0
    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 251
    :cond_1
    invoke-direct {p0, p1, v1, p2}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->parseAndAddNode(Landroid/content/res/XmlResourceParser;Landroid/util/ArrayMap;Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method protected addAppShortcut(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mAllApps:Ljava/util/Collection;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/miui/home/launcher/install/DefaultLayoutHelper;->getAppShortcutValues(Ljava/util/Collection;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/ContentValues;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 416
    iget-object p0, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mValuesList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getRemoteLayoutSystemCreatedFolderTitles()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 297
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 298
    iget-object v1, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mLayoutIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 299
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->getRemoteLayoutSystemCreatedFolderTitles(I)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getRemoteLayoutSystemCreatedFolderTitles(I)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 305
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 306
    iget-object p0, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0

    .line 308
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    .line 309
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const-string p1, "folder"

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "title"

    .line 310
    invoke-static {p0, p1}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 311
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AutoInstalls"

    const-string v1, "getRemoteLayoutSystemCreatedFolderTitles"

    .line 315
    invoke-static {p1, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-object v0
.end method

.method public loadLayout(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 9

    const-string v0, "AutoInstalls"

    const/4 v1, -0x1

    .line 212
    :try_start_0
    iget-object v2, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mLayoutIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 213
    iget-object v5, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/miui/home/launcher/common/Utilities;->getAppVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parse default workspace name:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v0, v7, v4}, Lcom/miui/home/library/MiuiHomeLog284Helper;->fileLoggerLevelFatal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 214
    invoke-direct {p0, v3, p1}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->parseLayout(ILandroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 216
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mValuesList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 220
    :cond_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    :try_start_1
    const-string v5, "favorites"

    .line 223
    iget-object v6, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mValuesList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    invoke-virtual {p1, v5, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 225
    :cond_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    :try_start_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v2

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 228
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "Error parsing layout"

    .line 231
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method
