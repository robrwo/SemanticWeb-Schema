use utf8;

package SemanticWeb::Schema::SoftwareApplication;

# ABSTRACT: A software application.

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'SoftwareApplication';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.01.0';

=encoding utf8

=head1 DESCRIPTION

A software application.




=head1 ATTRIBUTES


=head2 C<application_category>

C<applicationCategory>

Type of software application, e.g. 'Game, Multimedia'.


A application_category should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_application_category>

A predicate for the L</application_category> attribute.

=cut

has application_category => (
    is        => 'rw',
    predicate => '_has_application_category',
    json_ld   => 'applicationCategory',
);


=head2 C<application_sub_category>

C<applicationSubCategory>

Subcategory of the application, e.g. 'Arcade Game'.


A application_sub_category should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_application_sub_category>

A predicate for the L</application_sub_category> attribute.

=cut

has application_sub_category => (
    is        => 'rw',
    predicate => '_has_application_sub_category',
    json_ld   => 'applicationSubCategory',
);


=head2 C<application_suite>

C<applicationSuite>

The name of the application suite to which the application belongs (e.g.
Excel belongs to Office).


A application_suite should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_application_suite>

A predicate for the L</application_suite> attribute.

=cut

has application_suite => (
    is        => 'rw',
    predicate => '_has_application_suite',
    json_ld   => 'applicationSuite',
);


=head2 C<available_on_device>

C<availableOnDevice>

Device required to run the application. Used in cases where a specific
make/model is required to run the application.


A available_on_device should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_available_on_device>

A predicate for the L</available_on_device> attribute.

=cut

has available_on_device => (
    is        => 'rw',
    predicate => '_has_available_on_device',
    json_ld   => 'availableOnDevice',
);


=head2 C<countries_not_supported>

C<countriesNotSupported>

Countries for which the application is not supported. You can also provide
the two-letter ISO 3166-1 alpha-2 country code.


A countries_not_supported should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_countries_not_supported>

A predicate for the L</countries_not_supported> attribute.

=cut

has countries_not_supported => (
    is        => 'rw',
    predicate => '_has_countries_not_supported',
    json_ld   => 'countriesNotSupported',
);


=head2 C<countries_supported>

C<countriesSupported>

Countries for which the application is supported. You can also provide the
two-letter ISO 3166-1 alpha-2 country code.


A countries_supported should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_countries_supported>

A predicate for the L</countries_supported> attribute.

=cut

has countries_supported => (
    is        => 'rw',
    predicate => '_has_countries_supported',
    json_ld   => 'countriesSupported',
);


=head2 C<device>



Device required to run the application. Used in cases where a specific
make/model is required to run the application.


A device should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_device>

A predicate for the L</device> attribute.

=cut

has device => (
    is        => 'rw',
    predicate => '_has_device',
    json_ld   => 'device',
);


=head2 C<download_url>

C<downloadUrl>

If the file can be downloaded, URL to download the binary.


A download_url should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_download_url>

A predicate for the L</download_url> attribute.

=cut

has download_url => (
    is        => 'rw',
    predicate => '_has_download_url',
    json_ld   => 'downloadUrl',
);


=head2 C<feature_list>

C<featureList>

Features or modules provided by this application (and possibly required by
other applications).


A feature_list should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_feature_list>

A predicate for the L</feature_list> attribute.

=cut

has feature_list => (
    is        => 'rw',
    predicate => '_has_feature_list',
    json_ld   => 'featureList',
);


=head2 C<file_size>

C<fileSize>

Size of the application / package (e.g. 18MB). In the absence of a unit
(MB, KB etc.), KB will be assumed.


A file_size should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_file_size>

A predicate for the L</file_size> attribute.

=cut

has file_size => (
    is        => 'rw',
    predicate => '_has_file_size',
    json_ld   => 'fileSize',
);


=head2 C<install_url>

C<installUrl>

URL at which the app may be installed, if different from the URL of the
item.


A install_url should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_install_url>

A predicate for the L</install_url> attribute.

=cut

has install_url => (
    is        => 'rw',
    predicate => '_has_install_url',
    json_ld   => 'installUrl',
);


=head2 C<memory_requirements>

C<memoryRequirements>

Minimum memory requirements.


A memory_requirements should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_memory_requirements>

A predicate for the L</memory_requirements> attribute.

=cut

has memory_requirements => (
    is        => 'rw',
    predicate => '_has_memory_requirements',
    json_ld   => 'memoryRequirements',
);


=head2 C<operating_system>

C<operatingSystem>

Operating systems supported (Windows 7, OSX 10.6, Android 1.6).


A operating_system should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_operating_system>

A predicate for the L</operating_system> attribute.

=cut

has operating_system => (
    is        => 'rw',
    predicate => '_has_operating_system',
    json_ld   => 'operatingSystem',
);


=head2 C<permissions>



Permission(s) required to run the app (for example, a mobile app may
require full internet access or may run only on wifi).


A permissions should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_permissions>

A predicate for the L</permissions> attribute.

=cut

has permissions => (
    is        => 'rw',
    predicate => '_has_permissions',
    json_ld   => 'permissions',
);


=head2 C<processor_requirements>

C<processorRequirements>

Processor architecture required to run the application (e.g. IA64).


A processor_requirements should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_processor_requirements>

A predicate for the L</processor_requirements> attribute.

=cut

has processor_requirements => (
    is        => 'rw',
    predicate => '_has_processor_requirements',
    json_ld   => 'processorRequirements',
);


=head2 C<release_notes>

C<releaseNotes>

Description of what changed in this version.


A release_notes should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_release_notes>

A predicate for the L</release_notes> attribute.

=cut

has release_notes => (
    is        => 'rw',
    predicate => '_has_release_notes',
    json_ld   => 'releaseNotes',
);


=head2 C<requirements>



Component dependency requirements for application. This includes runtime
environments and shared libraries that are not included in the application
distribution package, but required to run the application (Examples:
DirectX, Java or .NET runtime).


A requirements should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_requirements>

A predicate for the L</requirements> attribute.

=cut

has requirements => (
    is        => 'rw',
    predicate => '_has_requirements',
    json_ld   => 'requirements',
);


=head2 C<screenshot>



A link to a screenshot image of the app.


A screenshot should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ImageObject']>

=item C<Str>

=back

=head2 C<_has_screenshot>

A predicate for the L</screenshot> attribute.

=cut

has screenshot => (
    is        => 'rw',
    predicate => '_has_screenshot',
    json_ld   => 'screenshot',
);


=head2 C<software_add_on>

C<softwareAddOn>

Additional content for a software application.


A software_add_on should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::SoftwareApplication']>

=back

=head2 C<_has_software_add_on>

A predicate for the L</software_add_on> attribute.

=cut

has software_add_on => (
    is        => 'rw',
    predicate => '_has_software_add_on',
    json_ld   => 'softwareAddOn',
);


=head2 C<software_help>

C<softwareHelp>

Software application help.


A software_help should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=back

=head2 C<_has_software_help>

A predicate for the L</software_help> attribute.

=cut

has software_help => (
    is        => 'rw',
    predicate => '_has_software_help',
    json_ld   => 'softwareHelp',
);


=head2 C<software_requirements>

C<softwareRequirements>

Component dependency requirements for application. This includes runtime
environments and shared libraries that are not included in the application
distribution package, but required to run the application (Examples:
DirectX, Java or .NET runtime).


A software_requirements should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_software_requirements>

A predicate for the L</software_requirements> attribute.

=cut

has software_requirements => (
    is        => 'rw',
    predicate => '_has_software_requirements',
    json_ld   => 'softwareRequirements',
);


=head2 C<software_version>

C<softwareVersion>

Version of the software instance.


A software_version should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_software_version>

A predicate for the L</software_version> attribute.

=cut

has software_version => (
    is        => 'rw',
    predicate => '_has_software_version',
    json_ld   => 'softwareVersion',
);


=head2 C<storage_requirements>

C<storageRequirements>

Storage requirements (free space required).


A storage_requirements should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_storage_requirements>

A predicate for the L</storage_requirements> attribute.

=cut

has storage_requirements => (
    is        => 'rw',
    predicate => '_has_storage_requirements',
    json_ld   => 'storageRequirements',
);


=head2 C<supporting_data>

C<supportingData>

Supporting data for a SoftwareApplication.


A supporting_data should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DataFeed']>

=back

=head2 C<_has_supporting_data>

A predicate for the L</supporting_data> attribute.

=cut

has supporting_data => (
    is        => 'rw',
    predicate => '_has_supporting_data',
    json_ld   => 'supportingData',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
