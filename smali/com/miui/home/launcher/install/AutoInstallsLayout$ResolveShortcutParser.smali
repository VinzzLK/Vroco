.class public Lcom/miui/home/launcher/install/AutoInstallsLayout$ResolveShortcutParser;
.super Ljava/lang/Object;
.source "AutoInstallsLayout.java"

# interfaces
.implements Lcom/miui/home/launcher/install/AutoInstallsLayout$TagParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/install/AutoInstallsLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ResolveShortcutParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/install/AutoInstallsLayout;


# direct methods
.method protected constructor <init>(Lcom/miui/home/launcher/install/AutoInstallsLayout;)V
    .locals 0

    .line 1033
    iput-object p1, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout$ResolveShortcutParser;->this$0:Lcom/miui/home/launcher/install/AutoInstallsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseAndAdd(Landroid/content/res/XmlResourceParser;Landroid/content/ContentValues;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo p3, "title"

    .line 1037
    invoke-static {p1, p3}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p3, "iconResource"

    .line 1038
    invoke-static {p1, p3}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p3, "packageName"

    .line 1039
    invoke-static {p1, p3}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string p3, "className"

    .line 1040
    invoke-static {p1, p3}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p3, "action"

    .line 1041
    invoke-static {p1, p3}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo p3, "uri"

    .line 1042
    invoke-static {p1, p3}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string p3, "retained"

    .line 1043
    invoke-static {p1, p3}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 1044
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ResolveShortcutParser:shortcut->"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "AutoInstalls"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v9, 0x0

    if-nez p1, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    .line 1052
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout$ResolveShortcutParser;->this$0:Lcom/miui/home/launcher/install/AutoInstallsLayout;

    iget-object v0, v0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1055
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout$ResolveShortcutParser;->this$0:Lcom/miui/home/launcher/install/AutoInstallsLayout;

    iget-object v0, v0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mPackageManager:Landroid/content/pm/PackageManager;

    new-array v4, p1, [Ljava/lang/String;

    aput-object v1, v4, v9

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1057
    iget-object v4, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout$ResolveShortcutParser;->this$0:Lcom/miui/home/launcher/install/AutoInstallsLayout;

    iget-object v4, v4, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v10, Landroid/content/ComponentName;

    aget-object v0, v0, v9

    invoke-direct {v10, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v10, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    const/16 p3, 0x3a

    .line 1064
    invoke-virtual {v3, p3}, Ljava/lang/String;->indexOf(I)I

    move-result p3

    invoke-virtual {v3, v9, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v0, p2

    .line 1063
    invoke-static/range {v0 .. v8}, Lcom/miui/home/launcher/install/DefaultLayoutHelper;->addUriShortcut(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/ContentValues;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1066
    iget-object p0, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout$ResolveShortcutParser;->this$0:Lcom/miui/home/launcher/install/AutoInstallsLayout;

    invoke-static {p0}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$400(Lcom/miui/home/launcher/install/AutoInstallsLayout;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return p1

    :cond_1
    return v9

    .line 1059
    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Favorite not found: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_2
    :goto_1
    const-string p0, "Ignoring shortcut"

    .line 1046
    invoke-static {p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9
.end method
