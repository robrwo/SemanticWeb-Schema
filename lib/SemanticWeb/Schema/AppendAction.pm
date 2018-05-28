package SemanticWeb::Schema::AppendAction;

# ABSTRACT: The act of inserting at the end if an ordered collection.

use Moo;

extends qw/ SemanticWeb::Schema::InsertAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of inserting at the end if an ordered collection.




=cut


around json_ld_type => sub { return 'AppendAction' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::InsertAction>

=cut

1;
