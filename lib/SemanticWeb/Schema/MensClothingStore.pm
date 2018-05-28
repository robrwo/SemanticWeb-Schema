package SemanticWeb::Schema::MensClothingStore;

# ABSTRACT: A men's clothing store.

use Moo;

extends qw/ SemanticWeb::Schema::Store /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A men's clothing store.




=cut


around json_ld_type => sub { return 'MensClothingStore' };

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
