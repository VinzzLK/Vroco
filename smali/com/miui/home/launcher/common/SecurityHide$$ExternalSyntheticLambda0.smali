.class public final synthetic Lcom/miui/home/launcher/common/SecurityHide$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/common/SecurityHide$$ExternalSyntheticLambda0;->f$0:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/common/SecurityHide$$ExternalSyntheticLambda0;->f$0:Ljava/lang/StringBuilder;

    check-cast p1, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/SecurityHide;->$r8$lambda$VLtQmLV8fPBhLKTq6DW0Q8-eqCA(Ljava/lang/StringBuilder;Lcom/miui/home/launcher/LauncherModel$PackageAndUser;)V

    return-void
.end method
