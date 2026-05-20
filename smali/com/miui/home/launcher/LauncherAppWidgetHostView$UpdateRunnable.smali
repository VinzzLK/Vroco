.class Lcom/miui/home/launcher/LauncherAppWidgetHostView$UpdateRunnable;
.super Ljava/lang/Object;
.source "LauncherAppWidgetHostView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/LauncherAppWidgetHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateRunnable"
.end annotation


# instance fields
.field private final mHostViewWeekReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/LauncherAppWidgetHostView;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoteViews:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Landroid/widget/RemoteViews;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/LauncherAppWidgetHostView;",
            ">;",
            "Landroid/widget/RemoteViews;",
            ")V"
        }
    .end annotation

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView$UpdateRunnable;->mHostViewWeekReference:Ljava/lang/ref/WeakReference;

    .line 282
    iput-object p2, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView$UpdateRunnable;->mRemoteViews:Landroid/widget/RemoteViews;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 287
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView$UpdateRunnable;->mHostViewWeekReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    if-nez v0, :cond_0

    const-string p0, "Launcher.Widget"

    const-string v0, "launcherAppWidgetHost == null"

    .line 289
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 292
    :cond_0
    invoke-static {v0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->access$200(Lcom/miui/home/launcher/LauncherAppWidgetHostView;)V

    .line 293
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 294
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 295
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_2

    .line 296
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 297
    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 298
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    invoke-static {v0, v2}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->access$300(Lcom/miui/home/launcher/LauncherAppWidgetHostView;Landroid/view/View;)V

    .line 301
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 303
    :cond_2
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView$UpdateRunnable;->mRemoteViews:Landroid/widget/RemoteViews;

    invoke-static {v0, v2}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->access$402(Lcom/miui/home/launcher/LauncherAppWidgetHostView;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 304
    invoke-static {v0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->access$500(Lcom/miui/home/launcher/LauncherAppWidgetHostView;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->access$600(Lcom/miui/home/launcher/LauncherAppWidgetHostView;)Lcom/miui/home/launcher/LauncherAppWidgetHostView$WidgetUpdateListener;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 305
    invoke-static {v0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->access$600(Lcom/miui/home/launcher/LauncherAppWidgetHostView;)Lcom/miui/home/launcher/LauncherAppWidgetHostView$WidgetUpdateListener;

    move-result-object v2

    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView$UpdateRunnable;->mRemoteViews:Landroid/widget/RemoteViews;

    invoke-interface {v2, p0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView$WidgetUpdateListener;->onWidgetUpdate(Landroid/widget/RemoteViews;)V

    .line 307
    :cond_3
    invoke-static {v0, v1}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->access$502(Lcom/miui/home/launcher/LauncherAppWidgetHostView;Z)Z

    return-void
.end method
