package SemanticWeb::Schema::Duration;

# ABSTRACT: Quantity: Duration (use <a href="http://en

use Moo;

extends qw/ SemanticWeb::Schema::Quantity /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

Quantity: Duration (use <a href="http://en.wikipedia.org/wiki/ISO_8601">ISO
8601 duration format</a>).

=end html




=cut


around json_ld_type => sub { return 'Duration' };

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
