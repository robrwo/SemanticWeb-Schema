use utf8;

package SemanticWeb::Schema::Vessel;

# ABSTRACT: A component of the human body circulatory system comprised of an intricate network of hollow tubes that transport blood throughout the entire body.

use Moo;

extends qw/ SemanticWeb::Schema::AnatomicalStructure /;


use MooX::JSON_LD 'Vessel';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.2';

=encoding utf8

=head1 DESCRIPTION

A component of the human body circulatory system comprised of an intricate
network of hollow tubes that transport blood throughout the entire body.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::AnatomicalStructure>

=cut

1;
