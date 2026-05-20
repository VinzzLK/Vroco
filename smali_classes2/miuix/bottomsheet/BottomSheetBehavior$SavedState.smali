.class public Lmiuix/bottomsheet/BottomSheetBehavior$SavedState;
.super Landroidx/customview/view/AbsSavedState;
.source "BottomSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/bottomsheet/BottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiuix/bottomsheet/BottomSheetBehavior$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field hideable:Z

.field peekHeight:I

.field skipCollapsed:Z

.field final state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2947
    new-instance v0, Lmiuix/bottomsheet/BottomSheetBehavior$SavedState$1;

    invoke-direct {v0}, Lmiuix/bottomsheet/BottomSheetBehavior$SavedState$1;-><init>()V

    sput-object v0, Lmiuix/bottomsheet/BottomSheetBehavior$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 2

    .line 2908
    invoke-direct {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 2910
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior$SavedState;->state:I

    .line 2911
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior$SavedState;->peekHeight:I

    .line 2912
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iput-boolean p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior$SavedState;->hideable:Z

    .line 2913
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v1, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior$SavedState;->skipCollapsed:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;Lmiuix/bottomsheet/BottomSheetBehavior;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Lmiuix/bottomsheet/BottomSheetBehavior<",
            "*>;)V"
        }
    .end annotation

    .line 2917
    invoke-direct {p0, p1}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2918
    iget p1, p2, Lmiuix/bottomsheet/BottomSheetBehavior;->state:I

    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior$SavedState;->state:I

    .line 2919
    invoke-static {p2}, Lmiuix/bottomsheet/BottomSheetBehavior;->access$1400(Lmiuix/bottomsheet/BottomSheetBehavior;)I

    move-result p1

    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior$SavedState;->peekHeight:I

    .line 2920
    iget-boolean p1, p2, Lmiuix/bottomsheet/BottomSheetBehavior;->hideable:Z

    iput-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior$SavedState;->hideable:Z

    .line 2921
    invoke-static {p2}, Lmiuix/bottomsheet/BottomSheetBehavior;->access$1500(Lmiuix/bottomsheet/BottomSheetBehavior;)Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior$SavedState;->skipCollapsed:Z

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 2940
    invoke-super {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2941
    iget p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior$SavedState;->state:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2942
    iget p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior$SavedState;->peekHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2943
    iget-boolean p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior$SavedState;->hideable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2944
    iget-boolean p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior$SavedState;->skipCollapsed:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
