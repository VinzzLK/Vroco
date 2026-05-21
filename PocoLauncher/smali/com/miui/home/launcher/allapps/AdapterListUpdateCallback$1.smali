.class Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback$1;
.super Ljava/lang/Object;
.source "AdapterListUpdateCallback.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->runOnLayoutDone(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;

.field final synthetic val$finishListener:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;Ljava/lang/Runnable;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback$1;->this$0:Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback$1;->val$finishListener:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback$1;->val$finishListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 79
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback$1;->this$0:Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->access$000(Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback$1;->this$0:Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->access$000(Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    return-void
.end method
