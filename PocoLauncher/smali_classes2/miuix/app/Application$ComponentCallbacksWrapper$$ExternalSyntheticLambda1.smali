.class public final synthetic Lmiuix/app/Application$ComponentCallbacksWrapper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/core/util/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lmiuix/app/Application$ComponentCallbacksWrapper$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lmiuix/app/Application$ComponentCallbacksWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lmiuix/app/Application$ComponentCallbacksWrapper$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lmiuix/app/Application$ComponentCallbacksWrapper$$ExternalSyntheticLambda1;->INSTANCE:Lmiuix/app/Application$ComponentCallbacksWrapper$$ExternalSyntheticLambda1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/content/ComponentCallbacks;

    invoke-interface {p1}, Landroid/content/ComponentCallbacks;->onLowMemory()V

    return-void
.end method
