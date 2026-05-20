.class Lcom/miui/home/launcher/install/AutoInstallsLayout$MarketAutoInstallParser;
.super Ljava/lang/Object;
.source "AutoInstallsLayout.java"

# interfaces
.implements Lcom/miui/home/launcher/install/AutoInstallsLayout$TagParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/install/AutoInstallsLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarketAutoInstallParser"
.end annotation


# instance fields
.field private final mIconRes:Landroid/content/res/Resources;

.field final synthetic this$0:Lcom/miui/home/launcher/install/AutoInstallsLayout;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/install/AutoInstallsLayout;Landroid/content/res/Resources;)V
    .locals 0

    .line 904
    iput-object p1, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout$MarketAutoInstallParser;->this$0:Lcom/miui/home/launcher/install/AutoInstallsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 905
    iput-object p2, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout$MarketAutoInstallParser;->mIconRes:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public parseAndAdd(Landroid/content/res/XmlResourceParser;Landroid/content/ContentValues;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 9

    const-string p3, "packageName"

    .line 910
    invoke-static {p1, p3}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 912
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->getRussiaFolderDefaultId()J

    move-result-wide v2

    .line 913
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    const-wide/16 v4, -0x1

    cmp-long p3, v2, v4

    if-eqz p3, :cond_0

    const-string p3, "container"

    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long p3, v4, v2

    if-nez p3, :cond_0

    .line 914
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v2, "russiaFolderDefaultPreinstallApps"

    invoke-virtual {p3, v2, v0}, Lcom/miui/home/launcher/common/BaseSharePreference;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p3

    .line 915
    invoke-interface {p3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 916
    invoke-interface {p3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 917
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    invoke-virtual {v0, v2, p3}, Lcom/miui/home/launcher/common/BaseSharePreference;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    :cond_0
    const-string/jumbo p3, "title"

    const/4 v6, 0x0

    .line 922
    invoke-static {p1, p3, v6}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$500(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 924
    iget-object v2, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout$MarketAutoInstallParser;->this$0:Lcom/miui/home/launcher/install/AutoInstallsLayout;

    invoke-static {v2}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$600(Lcom/miui/home/launcher/install/AutoInstallsLayout;)Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 926
    :cond_1
    invoke-static {p1, p3}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 927
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 928
    iget-object v0, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout$MarketAutoInstallParser;->this$0:Lcom/miui/home/launcher/install/AutoInstallsLayout;

    iget-object v0, v0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1001ed

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 933
    :cond_2
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_2

    :cond_3
    const-string v2, "icon"

    .line 937
    invoke-static {p1, v2, v6}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$500(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v3

    const-string v7, "AutoInstalls"

    if-nez v3, :cond_5

    .line 941
    invoke-static {p1, v2}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 942
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string p0, "Ignoring shortcut, can\'t get icon from name"

    .line 943
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_4
    const/16 v2, 0x3a

    .line 946
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 948
    :cond_5
    iget-object p1, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout$MarketAutoInstallParser;->mIconRes:Landroid/content/res/Resources;

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_6

    const-string p0, "Ignoring shortcut, can\'t load icon from resource"

    .line 950
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    .line 953
    :cond_6
    iget-object p1, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout$MarketAutoInstallParser;->mIconRes:Landroid/content/res/Resources;

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 954
    iget-object v2, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout$MarketAutoInstallParser;->mIconRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    :try_start_0
    const-string/jumbo v3, "spanX"

    const/4 v8, 0x1

    .line 957
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "spanY"

    .line 958
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "itemType"

    const/16 v4, 0x11

    .line 959
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "iconType"

    .line 960
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "iconResource"

    .line 961
    invoke-virtual {p2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "iconPackage"

    .line 962
    invoke-virtual {p2, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    invoke-virtual {p2, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    new-instance p1, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p3, "pkgName"

    .line 965
    invoke-virtual {p1, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "intent"

    .line 966
    invoke-virtual {p1, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p1

    const-string p3, "app_state_db_need_init"

    invoke-static {p1, p3, v8}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 970
    iget-object p1, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout$MarketAutoInstallParser;->this$0:Lcom/miui/home/launcher/install/AutoInstallsLayout;

    iget-object p1, p1, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/miui/home/launcher/ScreenUtils;->isAlreadyInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 971
    new-instance p1, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;

    const-string v2, ""

    const/16 v3, 0x40

    const-wide/16 v4, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;-><init>(Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 972
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->getInstance()Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->addItemToDb(Lcom/miui/home/launcher/russia/RussiaPreInstallApp;)V

    :cond_7
    const-string p1, "_id"

    .line 974
    invoke-static {}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->getFavoritesItemNewId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 975
    iget-object p0, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout$MarketAutoInstallParser;->this$0:Lcom/miui/home/launcher/install/AutoInstallsLayout;

    invoke-static {p0}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$400(Lcom/miui/home/launcher/install/AutoInstallsLayout;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v8

    :catch_0
    move-exception p0

    .line 978
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "insert error:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_2
    return v6
.end method
