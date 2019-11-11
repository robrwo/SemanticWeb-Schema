use utf8;

package SemanticWeb::Schema::FoodService;

# ABSTRACT: A food service

use Moo;

extends qw/ SemanticWeb::Schema::Service /;


use MooX::JSON_LD 'FoodService';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

A food service, like breakfast, lunch, or dinner.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Service>

=cut

1;
