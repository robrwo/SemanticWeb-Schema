use utf8;

package SemanticWeb::Schema::isBasedOn;

# ABSTRACT: A resource from which this work is derived or from which it is a modification or adaptation.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'isBasedOn';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A resource from which this work is derived or from which it is a
modification or adaptation.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
