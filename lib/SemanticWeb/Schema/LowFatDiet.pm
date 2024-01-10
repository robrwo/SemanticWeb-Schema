use utf8;

package SemanticWeb::Schema::LowFatDiet;

# ABSTRACT: A diet focused on reduced fat and cholesterol intake.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'LowFatDiet';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A diet focused on reduced fat and cholesterol intake.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
