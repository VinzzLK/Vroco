.class public final synthetic Lcom/miui/home/launcher/overlay/OverlaySwipeController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/touch/SwipeDetector;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/touch/SwipeDetector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/touch/SwipeDetector;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {p0}, Lcom/miui/home/launcher/touch/SwipeDetector;->finishedScrolling()V

    return-void
.end method
