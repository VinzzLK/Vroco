.class Lcom/miui/home/launcher/install/AutoInstallsLayout$ShortcutParser;
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
    name = "ShortcutParser"
.end annotation


# instance fields
.field private final mIconRes:Landroid/content/res/Resources;

.field final synthetic this$0:Lcom/miui/home/launcher/install/AutoInstallsLayout;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/install/AutoInstallsLayout;Landroid/content/res/Resources;)V
    .locals 0

    .line 429
    iput-object p1, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout$ShortcutParser;->this$0:Lcom/miui/home/launcher/install/AutoInstallsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    iput-object p2, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout$ShortcutParser;->mIconRes:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public parseAndAdd(Landroid/content/res/XmlResourceParser;Landroid/content/ContentValues;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 12

    const-string/jumbo p3, "title"

    const/4 v0, 0x0

    .line 435
    invoke-static {p1, p3, v0}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$500(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "AutoInstalls"

    if-nez v1, :cond_0

    .line 438
    invoke-static {p1, p3}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 439
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "Ignoring shortcut, can\'t get title"

    .line 440
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 444
    :cond_0
    iget-object p3, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout$ShortcutParser;->this$0:Lcom/miui/home/launcher/install/AutoInstallsLayout;

    invoke-static {p3}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$600(Lcom/miui/home/launcher/install/AutoInstallsLayout;)Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    :cond_1
    move-object v8, p3

    const-string p3, "icon"

    .line 447
    invoke-static {p1, p3, v0}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$500(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_4

    .line 451
    invoke-static {p1, p3}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 452
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p3, "iconResource"

    .line 453
    invoke-static {p1, p3}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 455
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p0, "Ignoring shortcut, can\'t get icon from name"

    .line 456
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    const/16 v1, 0x3a

    .line 459
    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 461
    :cond_4
    iget-object p3, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout$ShortcutParser;->mIconRes:Landroid/content/res/Resources;

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-nez p3, :cond_5

    const-string p0, "Ignoring shortcut, can\'t load icon from resource"

    .line 463
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 466
    :cond_5
    iget-object p3, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout$ShortcutParser;->mIconRes:Landroid/content/res/Resources;

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p3

    .line 467
    iget-object v2, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout$ShortcutParser;->mIconRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v6, p3

    move-object v7, v1

    const-string p3, "packageName"

    .line 469
    invoke-static {p1, p3}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string p3, "className"

    .line 470
    invoke-static {p1, p3}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p3, "action"

    .line 471
    invoke-static {p1, p3}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo p3, "url"

    .line 472
    invoke-static {p1, p3}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string p3, "retained"

    .line 473
    invoke-static {p1, p3}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    move-object v3, p2

    .line 474
    invoke-static/range {v3 .. v11}, Lcom/miui/home/launcher/install/DefaultLayoutHelper;->addUriShortcut(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/ContentValues;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 477
    iget-object p0, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout$ShortcutParser;->this$0:Lcom/miui/home/launcher/install/AutoInstallsLayout;

    invoke-static {p0}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$400(Lcom/miui/home/launcher/install/AutoInstallsLayout;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0

    :cond_6
    return v0
.end method
