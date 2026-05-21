.class public final synthetic Lcom/miui/home/launcher/maml/auth/MaMlAuthManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;

.field public final synthetic f$1:Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/maml/auth/MaMlAuthManager$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;

    iput-object p2, p0, Lcom/miui/home/launcher/maml/auth/MaMlAuthManager$$ExternalSyntheticLambda1;->f$1:Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    iput p3, p0, Lcom/miui/home/launcher/maml/auth/MaMlAuthManager$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/maml/auth/MaMlAuthManager$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;

    iget-object v1, p0, Lcom/miui/home/launcher/maml/auth/MaMlAuthManager$$ExternalSyntheticLambda1;->f$1:Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    iget p0, p0, Lcom/miui/home/launcher/maml/auth/MaMlAuthManager$$ExternalSyntheticLambda1;->f$2:I

    check-cast p1, Lmiui/drm/DrmManager$DrmResult;

    invoke-static {v0, v1, p0, p1}, Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;->$r8$lambda$Z89T_KdEF3cfpNI2QVtrxKW3IMA(Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;ILmiui/drm/DrmManager$DrmResult;)V

    return-void
.end method
