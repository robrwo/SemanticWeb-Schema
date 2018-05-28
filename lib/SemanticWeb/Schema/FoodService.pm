package SemanticWeb::Schema::FoodService;

# ABSTRACT: A food service

use Moo;

extends qw/ SemanticWeb::Schema::Service /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A food service, like breakfast, lunch, or dinner.




=cut


around json_ld_type => sub { return 'FoodService' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Service>

=cut

1;
