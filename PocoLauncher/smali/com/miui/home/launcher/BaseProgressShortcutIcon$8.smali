.class Lcom/miui/home/launcher/BaseProgressShortcutIcon$8;
.super Lmiuix/animation/listener/TransitionListener;
.source "BaseProgressShortcutIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/BaseProgressShortcutIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/BaseProgressShortcutIcon;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/BaseProgressShortcutIcon;)V
    .locals 0

    .line 538
    iput-object p1, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon$8;->this$0:Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    .line 541
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 542
    iget-object p1, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon$8;->this$0:Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    iget-object p1, p1, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mFolderCreationBg:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 543
    iget-object p0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon$8;->this$0:Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    iget-object p0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mFolderCreationBg:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
