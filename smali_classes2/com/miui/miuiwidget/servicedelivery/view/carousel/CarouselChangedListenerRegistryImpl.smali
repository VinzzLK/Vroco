.class public Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedListenerRegistryImpl;
.super Ljava/lang/Object;
.source "CarouselChangedListenerRegistryImpl.java"

# interfaces
.implements Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedListenerRegistry;


# instance fields
.field public final onChildAddedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel$OnChildAddedListener;",
            ">;"
        }
    .end annotation
.end field

.field public final onChildRemovedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel$OnChildRemovedListener;",
            ">;"
        }
    .end annotation
.end field

.field public final onSelectedChildChangedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel$OnSelectedChildChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedListenerRegistryImpl;->onChildAddedListeners:Ljava/util/Set;

    .line 8
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedListenerRegistryImpl;->onChildRemovedListeners:Ljava/util/Set;

    .line 9
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedListenerRegistryImpl;->onSelectedChildChangedListeners:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public addOnChildAddedListener(Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel$OnChildAddedListener;)V
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedListenerRegistryImpl;->onChildAddedListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnChildRemovedListener(Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel$OnChildRemovedListener;)V
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedListenerRegistryImpl;->onChildRemovedListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnSelectedChildChangedListeners(Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel$OnSelectedChildChangedListener;)V
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedListenerRegistryImpl;->onSelectedChildChangedListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnChildAddedListener(Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel$OnChildAddedListener;)V
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedListenerRegistryImpl;->onChildAddedListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnChildRemovedListener(Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel$OnChildRemovedListener;)V
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedListenerRegistryImpl;->onChildRemovedListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnSelectedChildChangedListeners(Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel$OnSelectedChildChangedListener;)V
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/CarouselChangedListenerRegistryImpl;->onSelectedChildChangedListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
