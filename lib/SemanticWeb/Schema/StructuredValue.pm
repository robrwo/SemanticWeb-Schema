package SemanticWeb::Schema::StructuredValue;

# ABSTRACT: Structured values are used when the value of a property has a more complex structure than simply being a textual value or a reference to another thing.

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

Structured values are used when the value of a property has a more complex
structure than simply being a textual value or a reference to another
thing.




=cut


around json_ld_type => sub { return 'StructuredValue' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
