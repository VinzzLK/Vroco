.class public abstract Lcom/miui/miuiwidget/servicedelivery/appitem/AppRoute;
.super Ljava/lang/Object;
.source "AppRoute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/miuiwidget/servicedelivery/appitem/AppRoute$GeneralRoute;,
        Lcom/miui/miuiwidget/servicedelivery/appitem/AppRoute$NativeRoute;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppRoute"

.field public static final THEME_APP_PACKAGE:Ljava/lang/String; = "com.android.thememanager"

.field public static final THEME_APP_PACKAGE_NEW:Ljava/lang/String; = "com.miui.themestore"


# instance fields
.field protected final next:Lcom/miui/miuiwidget/servicedelivery/appitem/AppRoute;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppRoute;->next:Lcom/miui/miuiwidget/servicedelivery/appitem/AppRoute;

    return-void
.end method

.method public constructor <init>(Lcom/miui/miuiwidget/servicedelivery/appitem/AppRoute;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppRoute;->next:Lcom/miui/miuiwidget/servicedelivery/appitem/AppRoute;

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 11
    invoke-static {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppRoute;->handleIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static handleIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final nextRoute(Landroid/content/Context;Lcom/miui/miuiwidget/servicedelivery/model/AppItem;)Z
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppRoute;->next:Lcom/miui/miuiwidget/servicedelivery/appitem/AppRoute;

    if-eqz p0, :cond_0

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppRoute;->route(Landroid/content/Context;Lcom/miui/miuiwidget/servicedelivery/model/AppItem;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract route(Landroid/content/Context;Lcom/miui/miuiwidget/servicedelivery/model/AppItem;)Z
.end method
