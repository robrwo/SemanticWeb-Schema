package SemanticWeb::Schema::TheaterGroup;

# ABSTRACT: A theater group or company

use Moo;

extends qw/ SemanticWeb::Schema::PerformingGroup /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A theater group or company, for example, the Royal Shakespeare Company or
Druid Theatre.




=cut


around json_ld_type => sub { return 'TheaterGroup' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::PerformingGroup>

=cut

1;
