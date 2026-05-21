.class Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper$Holder;
.super Ljava/lang/Object;
.source "HideAppPreferenceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static sInstance:Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;

    const-string v1, "hide_app"

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper$Holder;->sInstance:Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;

    return-void
.end method

.method static synthetic access$000()Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;
    .locals 1

    .line 19
    sget-object v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper$Holder;->sInstance:Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;

    return-object v0
.end method
