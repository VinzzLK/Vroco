.class Lcom/miui/home/launcher/uninstall/UninstallController$1;
.super Ljava/lang/Object;
.source "UninstallController.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/uninstall/UninstallController;->hideAppWidthDialog(Ljava/util/List;Lcom/miui/home/launcher/Launcher;)V
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
.field final synthetic this$0:Lcom/miui/home/launcher/uninstall/UninstallController;

.field final synthetic val$launcher:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public static synthetic $r8$lambda$dJ7HA20rKseiauqHrIYkNsJmIHA(Lcom/miui/home/launcher/uninstall/UninstallController$1;Ljava/util/List;Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/uninstall/UninstallController$1;->lambda$accept$0(Ljava/util/List;Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method constructor <init>(Lcom/miui/home/launcher/uninstall/UninstallController;Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/UninstallController$1;->this$0:Lcom/miui/home/launcher/uninstall/UninstallController;

    iput-object p2, p0, Lcom/miui/home/launcher/uninstall/UninstallController$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$accept$0(Ljava/util/List;Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/UninstallController$1;->this$0:Lcom/miui/home/launcher/uninstall/UninstallController;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/uninstall/UninstallController;->hideApps(Ljava/util/List;Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 190
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/uninstall/UninstallController$1;->accept(Ljava/util/List;)V

    return-void
.end method

.method public accept(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallController$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    new-instance v1, Lcom/miui/home/launcher/uninstall/UninstallController$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, v0}, Lcom/miui/home/launcher/uninstall/UninstallController$1$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/uninstall/UninstallController$1;Ljava/util/List;Lcom/miui/home/launcher/Launcher;)V

    invoke-static {v0, p1, v1}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper;->iconBoomAnim(Lcom/miui/home/launcher/Launcher;Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method
