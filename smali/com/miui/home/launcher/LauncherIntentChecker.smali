.class public Lcom/miui/home/launcher/LauncherIntentChecker;
.super Ljava/lang/Object;
.source "LauncherIntentChecker.java"


# static fields
.field private static final sFilterUserPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/LauncherIntentChecker;->sFilterUserPackages:Ljava/util/HashSet;

    const-string v1, "in.gov.uidai.mAadhaarPlus"

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static check(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    .line 18
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    sget-object v1, Lcom/miui/home/launcher/LauncherIntentChecker;->sFilterUserPackages:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "profile"

    .line 21
    invoke-virtual {p0, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method
