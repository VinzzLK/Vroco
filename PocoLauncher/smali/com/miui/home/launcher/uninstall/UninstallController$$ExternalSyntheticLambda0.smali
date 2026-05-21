.class public final synthetic Lcom/miui/home/launcher/uninstall/UninstallController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field public final synthetic f$1:Lcom/miui/home/launcher/MIUIWidgetBasicInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/UninstallController$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/uninstall/UninstallController$$ExternalSyntheticLambda0;->f$1:Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallController$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/UninstallController$$ExternalSyntheticLambda0;->f$1:Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    invoke-static {v0, p0}, Lcom/miui/home/launcher/uninstall/UninstallController;->$r8$lambda$JROJvav5lmHX43uomUjU9wAHjRk(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;)V

    return-void
.end method
