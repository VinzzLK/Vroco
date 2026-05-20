.class public final synthetic Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/HashSet;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController$$ExternalSyntheticLambda2;->f$0:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController$$ExternalSyntheticLambda2;->f$0:Ljava/util/HashSet;

    check-cast p1, Lcom/miui/home/launcher/FolderInfo;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;->$r8$lambda$ct06iM7v_Nls5qC83WQkg6IaVt4(Ljava/util/HashSet;Lcom/miui/home/launcher/FolderInfo;)Z

    move-result p0

    return p0
.end method
