.class Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedDispatcher;
.super Ljava/lang/Object;
.source "CarouselChangedDispatcher.java"


# instance fields
.field private final registry:Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedListenerRegistryImpl;

.field private selectedPosition:I


# direct methods
.method public constructor <init>(Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedListenerRegistryImpl;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedDispatcher;->selectedPosition:I

    .line 12
    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedDispatcher;->registry:Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedListenerRegistryImpl;

    return-void
.end method


# virtual methods
.method clearSelectedPosition()V
    .locals 1

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedDispatcher;->selectedPosition:I

    return-void
.end method

.method public dispatchChildAdded(I)V
    .locals 1

    .line 15
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedDispatcher;->registry:Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedListenerRegistryImpl;

    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedListenerRegistryImpl;->onChildAddedListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel$OnChildAddedListener;

    .line 16
    invoke-interface {v0, p1}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel$OnChildAddedListener;->onChildAdded(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchChildRemoved(I)V
    .locals 1

    .line 21
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedDispatcher;->registry:Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedListenerRegistryImpl;

    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedListenerRegistryImpl;->onChildRemovedListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel$OnChildRemovedListener;

    .line 22
    invoke-interface {v0, p1}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel$OnChildRemovedListener;->onChildRemoved(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchSelectedChildChanged(IIIZ)V
    .locals 1

    .line 27
    iget v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedDispatcher;->selectedPosition:I

    if-ne p2, v0, :cond_0

    if-nez p4, :cond_0

    return-void

    .line 28
    :cond_0
    iput p2, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedDispatcher;->selectedPosition:I

    .line 29
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedDispatcher;->registry:Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedListenerRegistryImpl;

    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedListenerRegistryImpl;->onSelectedChildChangedListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel$OnSelectedChildChangedListener;

    .line 30
    invoke-interface {p4, p1, p2, p3}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel$OnSelectedChildChangedListener;->onSelectedChildChanged(III)V

    goto :goto_0

    :cond_1
    return-void
.end method
