.class Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager$Holder;
.super Ljava/lang/Object;
.source "HideAppDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static sInstance:Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;-><init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager$1;)V

    sput-object v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager$Holder;->sInstance:Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;

    return-void
.end method

.method static synthetic access$100()Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;
    .locals 1

    .line 35
    sget-object v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager$Holder;->sInstance:Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;

    return-object v0
.end method
