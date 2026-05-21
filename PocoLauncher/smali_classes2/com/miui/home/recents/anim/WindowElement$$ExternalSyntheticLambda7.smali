.class public final synthetic Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/recents/anim/WindowElement;

.field public final synthetic f$1:Landroid/graphics/RectF;

.field public final synthetic f$2:F

.field public final synthetic f$3:F


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/anim/WindowElement;Landroid/graphics/RectF;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda7;->f$0:Lcom/miui/home/recents/anim/WindowElement;

    iput-object p2, p0, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda7;->f$1:Landroid/graphics/RectF;

    iput p3, p0, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda7;->f$2:F

    iput p4, p0, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda7;->f$3:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda7;->f$0:Lcom/miui/home/recents/anim/WindowElement;

    iget-object v1, p0, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda7;->f$1:Landroid/graphics/RectF;

    iget v2, p0, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda7;->f$2:F

    iget p0, p0, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda7;->f$3:F

    invoke-static {v0, v1, v2, p0}, Lcom/miui/home/recents/anim/WindowElement;->$r8$lambda$_sBHHWz2kZQ9zT12wyEqqG2UU3w(Lcom/miui/home/recents/anim/WindowElement;Landroid/graphics/RectF;FF)V

    return-void
.end method
