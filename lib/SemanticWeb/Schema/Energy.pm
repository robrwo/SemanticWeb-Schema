package SemanticWeb::Schema::Energy;

# ABSTRACT: Properties that take Energy as values are of the form '&lt;Number&gt; &lt;Energy unit of measure&gt;'.

use Moo;

extends qw/ SemanticWeb::Schema::Quantity /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

Properties that take Energy as values are of the form '&lt;Number&gt;
&lt;Energy unit of measure&gt;'.




=cut


around json_ld_type => sub { return 'Energy' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Quantity>

=cut

1;
