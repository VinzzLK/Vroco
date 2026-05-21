.class Lcom/miui/home/launcher/uninstall/UninstallController$5;
.super Ljava/lang/Object;
.source "UninstallController.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/uninstall/UninstallController;->showDialog(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/util/List<",
        "Lcom/miui/home/launcher/ShortcutInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$launcher:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public static synthetic $r8$lambda$h63RYIKgDGiD03hkH9ZJX3JMSPw(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/uninstall/UninstallController$5;->lambda$accept$0(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/UninstallController$5;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$accept$0(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V
    .locals 0

    .line 310
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getUninstallController()Lcom/miui/home/launcher/uninstall/UninstallController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/uninstall/UninstallController;->uninstallApps(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 306
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/uninstall/UninstallController$5;->accept(Ljava/util/List;)V

    return-void
.end method

.method public accept(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 309
    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/UninstallController$5;->val$launcher:Lcom/miui/home/launcher/Launcher;

    new-instance v0, Lcom/miui/home/launcher/uninstall/UninstallController$5$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/uninstall/UninstallController$5$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V

    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper;->iconBoomAnim(Lcom/miui/home/launcher/Launcher;Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method
