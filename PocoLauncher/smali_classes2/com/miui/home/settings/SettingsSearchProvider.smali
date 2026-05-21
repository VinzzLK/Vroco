.class public Lcom/miui/home/settings/SettingsSearchProvider;
.super Lcom/miui/home/settings/BaseSettingsSearchProvider;
.source "SettingsSearchProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/miui/home/settings/BaseSettingsSearchProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 19
    invoke-super/range {p0 .. p5}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 20
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 21
    instance-of p2, p1, Landroid/database/MatrixCursor;

    if-eqz p2, :cond_0

    .line 22
    move-object p2, p1

    check-cast p2, Landroid/database/MatrixCursor;

    const p3, 0x7f10017b

    .line 23
    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p3, "com.miui.home.action.ALL_APPS_SETTINGS"

    const-string p4, ""

    invoke-static {p2, p0, p3, p4}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method
