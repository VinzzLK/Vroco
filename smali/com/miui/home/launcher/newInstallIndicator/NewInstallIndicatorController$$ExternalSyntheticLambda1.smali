.class public final synthetic Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/HashSet;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController$$ExternalSyntheticLambda1;->f$0:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController$$ExternalSyntheticLambda1;->f$0:Ljava/util/HashSet;

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;->$r8$lambda$Xds8IV-V0m7Fk_1aV7Gj_wkYBks(Ljava/util/HashSet;Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method
