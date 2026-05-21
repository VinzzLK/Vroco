.class public final synthetic Lcom/miui/home/launcher/uninstall/UninstallController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/uninstall/UninstallController;

.field public final synthetic f$1:Lcom/miui/home/launcher/ShortcutInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/uninstall/UninstallController;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/UninstallController$$ExternalSyntheticLambda2;->f$0:Lcom/miui/home/launcher/uninstall/UninstallController;

    iput-object p2, p0, Lcom/miui/home/launcher/uninstall/UninstallController$$ExternalSyntheticLambda2;->f$1:Lcom/miui/home/launcher/ShortcutInfo;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallController$$ExternalSyntheticLambda2;->f$0:Lcom/miui/home/launcher/uninstall/UninstallController;

    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/UninstallController$$ExternalSyntheticLambda2;->f$1:Lcom/miui/home/launcher/ShortcutInfo;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/uninstall/UninstallController;->$r8$lambda$CNUIte5RNh8dIU7eCe9IMofggPI(Lcom/miui/home/launcher/uninstall/UninstallController;Lcom/miui/home/launcher/ShortcutInfo;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method
