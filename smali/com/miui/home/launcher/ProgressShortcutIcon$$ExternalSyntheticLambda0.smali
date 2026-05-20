.class public final synthetic Lcom/miui/home/launcher/ProgressShortcutIcon$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/ProgressShortcutIcon;

.field public final synthetic f$1:Lcom/miui/home/launcher/progress/ProgressShortcutInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/ProgressShortcutIcon;Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/ProgressShortcutIcon;

    iput-object p2, p0, Lcom/miui/home/launcher/ProgressShortcutIcon$$ExternalSyntheticLambda0;->f$1:Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/ProgressShortcutIcon;

    iget-object p0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon$$ExternalSyntheticLambda0;->f$1:Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/ProgressShortcutIcon;->$r8$lambda$-2LLsQulWU_GfpWizWHN9M2yWeA(Lcom/miui/home/launcher/ProgressShortcutIcon;Lcom/miui/home/launcher/progress/ProgressShortcutInfo;Landroid/animation/ValueAnimator;)V

    return-void
.end method
