.class public abstract Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateChangeListener$Stub;
.super Landroid/os/Binder;
.source "IMultiTaskingStateChangeListener.java"

# interfaces
.implements Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateChangeListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onCaptionClicked:I = 0x7

.field static final TRANSACTION_onCaptionTouchDown:I = 0xa

.field static final TRANSACTION_onInfinityModeStateChanged:I = 0xc

.field static final TRANSACTION_onMultiTaskDragEnd:I = 0x9

.field static final TRANSACTION_onMultiTaskDragStart:I = 0x8

.field static final TRANSACTION_onPreSoScStateChanged:I = 0x2

.field static final TRANSACTION_onRecentEnterMiniStart:I = 0xb

.field static final TRANSACTION_onSoScMinimizedChanging:I = 0x6

.field static final TRANSACTION_onSoScStateChanged:I = 0x1

.field static final TRANSACTION_onSplitBoundsChange:I = 0x5

.field static final TRANSACTION_onSplitBoundsChanging:I = 0x4

.field static final TRANSACTION_setSplitScreenResizing:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.wm.shell.multitasking.common.IMultiTaskingStateChangeListener"

    .line 94
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateChangeListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.android.wm.shell.multitasking.common.IMultiTaskingStateChangeListener"

    .line 105
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 106
    instance-of v1, v0, Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateChangeListener;

    if-eqz v1, :cond_1

    .line 107
    check-cast v0, Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateChangeListener;

    return-object v0

    .line 109
    :cond_1
    new-instance v0, Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateChangeListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateChangeListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    const/4 v10, 0x1

    const-string v3, "com.android.wm.shell.multitasking.common.IMultiTaskingStateChangeListener"

    if-lt v1, v10, :cond_0

    const v4, 0xffffff

    if-gt v1, v4, :cond_0

    .line 119
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v4, 0x5f4e5446

    if-eq v1, v4, :cond_5

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    .line 255
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 247
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 250
    invoke-interface {p0, v1, v2}, Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateChangeListener;->onInfinityModeStateChanged(II)V

    goto/16 :goto_3

    .line 240
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 241
    invoke-interface {p0, v1}, Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateChangeListener;->onRecentEnterMiniStart(I)V

    goto/16 :goto_3

    .line 234
    :pswitch_2
    invoke-interface {p0}, Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateChangeListener;->onCaptionTouchDown()V

    goto/16 :goto_3

    .line 228
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 229
    invoke-interface {p0, v1}, Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateChangeListener;->onMultiTaskDragEnd(I)V

    goto/16 :goto_3

    .line 221
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 222
    invoke-interface {p0, v1}, Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateChangeListener;->onMultiTaskDragStart(I)V

    goto/16 :goto_3

    .line 214
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 215
    invoke-interface {p0, v1}, Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateChangeListener;->onCaptionClicked(I)V

    goto/16 :goto_3

    .line 207
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 208
    invoke-interface {p0, v1}, Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateChangeListener;->onSoScMinimizedChanging(F)V

    goto/16 :goto_3

    .line 196
    :pswitch_7
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateChangeListener$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 198
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v3}, Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateChangeListener$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 200
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v4}, Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateChangeListener$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 201
    invoke-interface {p0, v1, v3, v2}, Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateChangeListener;->onSplitBoundsChange(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_3

    .line 185
    :pswitch_8
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateChangeListener$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 187
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v3}, Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateChangeListener$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 189
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v4}, Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateChangeListener$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 190
    invoke-interface {p0, v1, v3, v2}, Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateChangeListener;->onSplitBoundsChanging(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_3

    .line 178
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v3, v10

    .line 179
    :cond_1
    invoke-interface {p0, v3}, Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateChangeListener;->setSplitScreenResizing(Z)V

    goto/16 :goto_3

    .line 157
    :pswitch_a
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateChangeListener$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 159
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v4}, Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateChangeListener$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 161
    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v5}, Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateChangeListener$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2

    move v7, v10

    goto :goto_0

    :cond_2
    move v7, v3

    .line 167
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3

    move v8, v10

    goto :goto_1

    :cond_3
    move v8, v3

    .line 169
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    move-object v0, p0

    move-object v2, v4

    move-object v3, v5

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, v11

    .line 172
    invoke-interface/range {v0 .. v8}, Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateChangeListener;->onPreSoScStateChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZZII)V

    goto :goto_3

    .line 134
    :pswitch_b
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateChangeListener$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 136
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v4}, Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateChangeListener$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 138
    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v5}, Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateChangeListener$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 142
    sget-object v7, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v7}, Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateChangeListener$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 144
    sget-object v8, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v8}, Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateChangeListener$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_4

    move v9, v10

    goto :goto_2

    :cond_4
    move v9, v3

    .line 148
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    move-object v0, p0

    move-object v2, v4

    move-object v3, v5

    move v4, v6

    move-object v5, v7

    move-object v6, v8

    move v7, v9

    move v8, v11

    move v9, v12

    .line 151
    invoke-interface/range {v0 .. v9}, Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateChangeListener;->onSoScStateChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;ZII)V

    :goto_3
    return v10

    :cond_5
    move-object/from16 v0, p3

    .line 125
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
