package SemanticWeb::Schema::LockerDelivery;

# ABSTRACT: A DeliveryMethod in which an item is made available via locker.

use Moo;

extends qw/ SemanticWeb::Schema::DeliveryMethod /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A DeliveryMethod in which an item is made available via locker.




=cut


around json_ld_type => sub { return 'LockerDelivery' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::DeliveryMethod>

=cut

1;
