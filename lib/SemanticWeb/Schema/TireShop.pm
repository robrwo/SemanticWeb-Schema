package SemanticWeb::Schema::TireShop;

# ABSTRACT: A tire shop.

use Moo;

extends qw/ SemanticWeb::Schema::Store /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A tire shop.




=cut


around json_ld_type => sub { return 'TireShop' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Store>

=cut

1;
