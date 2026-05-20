.class public final Lcom/miui/home/recents/anim/TaskViewsElement$Companion;
.super Ljava/lang/Object;
.source "TaskViewsElement.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/anim/TaskViewsElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/anim/TaskViewsElement$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/miui/home/recents/anim/TaskViewsElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/home/recents/anim/TaskViewsElement<",
            "Lcom/miui/home/recents/anim/TaskViewsParams;",
            ">;"
        }
    .end annotation

    .line 103
    invoke-static {}, Lcom/miui/home/recents/anim/TaskViewsElement;->access$getInstance$delegate$cp()Lkotlin/Lazy;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/recents/anim/TaskViewsElement;

    return-object p0
.end method
